(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39915_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39916_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39917_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39918_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39919_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39920_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39921_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39922_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39923_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39924_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39925_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39926_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39927_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39928_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39929_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39942_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39950_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39951_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39952_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39957_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39958_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39959_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39960_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39961_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/match[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       'match-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/match[1]#match-macro?|
      (make-class-predicate |gerbil/core/match[1]#match-macro::t|))
    (define |gerbil/core/match[1]#make-match-macro|
      (lambda _%$args35214%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35214%_)))
    (define |gerbil/core/match[1]#match-macro-macro|
      (make-class-slot-accessor |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#match-macro-macro-set!|
      (make-class-slot-mutator |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#&match-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#&match-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#syntax-local-match-macro?|
      (lambda (_%stx35211%_)
        (if (gx#identifier? _%stx35211%_)
            (let ((__tmp39914 (gx#syntax-local-value _%stx35211%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39914))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33511%_ _%match-stx33513%_)
        (letrec ((_%parse133515%_
                  (lambda (_%hd33874%_)
                    (let* ((_%__stx3770237703%_ _%hd33874%_)
                           (_%g3390034042%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3770237703%_))))
                      (let ((_%__kont3770537706%_
                             (lambda (_%L34974%_ _%L34976%_)
                               (let* ((_%__stx3762237623%_ _%L34974%_)
                                      (_%g3499335026%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3762237623%_))))
                                 (let ((_%__kont3762537626%_
                                        (lambda ()
                                          (cons '?: (cons _%L34976%_ '()))))
                                       (_%__kont3762737628%_
                                        (lambda (_%L35167%_)
                                          (cons '?:
                                                (cons _%L34976%_
                                                      (cons (_%parse133515%_
                                                             _%L35167%_)
                                                            '())))))
                                       (_%__kont3762937630%_
                                        (lambda (_%L35137%_)
                                          (cons '?:
                                                (cons _%L34976%_
                                                      (cons '=>:
                                                            (cons (_%parse133515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L35137%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3763137632%_
                                        (lambda (_%L35088%_ _%L35090%_)
                                          (cons '?:
                                                (cons _%L34976%_
                                                      (cons '::
                                                            (cons _%L35090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133515%_ _%L35088%_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3763337634%_
                                        (lambda ()
                                          (_%parse-error33522%_ _%hd33874%_))))
                                   (let ((_%g3498935178%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3762237623%_)
                                                (let ((_%e3499635157%_
                                                       (gx#syntax-e
                                                        _%__stx3762237623%_)))
                                                  (let ((_%tl3499835164%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3499635157%_)))
                                                        (_%hd3499735161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3499635157%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3499835164%_)
                                                        (_%__kont3762737628%_
                                                         _%hd3499735161%_)
                                                        (if (gx#identifier?
                                                             _%hd3499735161%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39915_|
                         _%hd3499735161%_)
                        (if (gx#stx-pair? _%tl3499835164%_)
                            (let ((_%e3500335127%_
                                   (gx#syntax-e _%tl3499835164%_)))
                              (let ((_%tl3500535134%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3500335127%_)))
                                    (_%hd3500435131%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3500335127%_))))
                                (if (gx#stx-null? _%tl3500535134%_)
                                    (_%__kont3762937630%_ _%hd3500435131%_)
                                    (_%__kont3763337634%_))))
                            (_%__kont3763337634%_))
                        (_%__kont3763337634%_))
                    (if (gx#stx-datum? _%hd3499735161%_)
                        (let ((_%e3501135054%_ (gx#stx-e _%hd3499735161%_)))
                          (if (equal? _%e3501135054%_ '::)
                              (if (gx#stx-pair? _%tl3499835164%_)
                                  (let ((_%e3501235058%_
                                         (gx#syntax-e _%tl3499835164%_)))
                                    (let ((_%tl3501435065%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3501235058%_)))
                                          (_%hd3501335062%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3501235058%_))))
                                      (if (gx#stx-pair? _%tl3501435065%_)
                                          (let ((_%e3501535068%_
                                                 (gx#syntax-e
                                                  _%tl3501435065%_)))
                                            (let ((_%tl3501735075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3501535068%_)))
                                                  (_%hd3501635072%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3501535068%_))))
                                              (if (gx#identifier?
                                                   _%hd3501635072%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39916_|
                                                       _%hd3501635072%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3501735075%_)
                                                          (let ((_%e3501835078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3501735075%_)))
                    (let ((_%tl3502035085%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3501835078%_)))
                          (_%hd3501935082%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3501835078%_))))
                      (if (gx#stx-null? _%tl3502035085%_)
                          (_%__kont3763137632%_
                           _%hd3501935082%_
                           _%hd3501335062%_)
                          (_%__kont3763337634%_))))
                  (_%__kont3763337634%_))
              (_%__kont3763337634%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3763337634%_))))
                                          (_%__kont3763337634%_))))
                                  (_%__kont3763337634%_))
                              (_%__kont3763337634%_)))
                        (_%__kont3763337634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3763337634%_)))))
                                     (if (gx#stx-null? _%__stx3762237623%_)
                                         (_%__kont3762537626%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3498935178%_))))))))
                            (_%__kont3770737708%_
                             (lambda (_%L34879%_)
                               (let* ((_%__stx3760437605%_ _%L34879%_)
                                      (_%g3489134902%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3760437605%_))))
                                 (let ((_%__kont3760737608%_
                                        (lambda (_%L34930%_)
                                          (_%parse133515%_ _%L34930%_)))
                                       (_%__kont3760937610%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133515%_
                                                 _%L34879%_)))))
                                   (if (gx#stx-pair? _%__stx3760437605%_)
                                       (let ((_%e3489434920%_
                                              (gx#syntax-e
                                               _%__stx3760437605%_)))
                                         (let ((_%tl3489634927%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3489434920%_)))
                                               (_%hd3489534924%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3489434920%_))))
                                           (if (gx#stx-null? _%tl3489634927%_)
                                               (_%__kont3760737608%_
                                                _%hd3489534924%_)
                                               (_%__kont3760937610%_))))
                                       (_%__kont3760937610%_))))))
                            (_%__kont3770937710%_
                             (lambda (_%L34794%_)
                               (let* ((_%__stx3758637587%_ _%L34794%_)
                                      (_%g3480634817%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3758637587%_))))
                                 (let ((_%__kont3758937590%_
                                        (lambda (_%L34845%_)
                                          (_%parse133515%_ _%L34845%_)))
                                       (_%__kont3759137592%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133515%_
                                                 _%L34794%_)))))
                                   (if (gx#stx-pair? _%__stx3758637587%_)
                                       (let ((_%e3480934835%_
                                              (gx#syntax-e
                                               _%__stx3758637587%_)))
                                         (let ((_%tl3481134842%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3480934835%_)))
                                               (_%hd3481034839%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3480934835%_))))
                                           (if (gx#stx-null? _%tl3481134842%_)
                                               (_%__kont3758937590%_
                                                _%hd3481034839%_)
                                               (_%__kont3759137592%_))))
                                       (_%__kont3759137592%_))))))
                            (_%__kont3771137712%_
                             (lambda (_%L34764%_)
                               (cons 'not:
                                     (cons (_%parse133515%_ _%L34764%_) '()))))
                            (_%__kont3771337714%_
                             (lambda (_%L34720%_ _%L34722%_)
                               (cons 'cons:
                                     (cons (_%parse133515%_ _%L34722%_)
                                           (cons (_%parse133515%_ _%L34720%_)
                                                 '())))))
                            (_%__kont3771537716%_
                             (lambda (_%L34664%_ _%L34666%_ _%L34667%_)
                               (if (gx#stx-null? _%L34664%_)
                                   (cons 'cons:
                                         (cons (_%parse133515%_ _%L34667%_)
                                               (cons (_%parse133515%_
                                                      _%L34666%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133515%_ _%L34667%_)
                                               (cons (_%parse133515%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%L34666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L34664%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3771737718%_
                             (lambda (_%L34616%_)
                               (_%parse-list33517%_ _%L34616%_)))
                            (_%__kont3771937720%_
                             (lambda (_%L34586%_)
                               (cons 'box:
                                     (cons (_%parse133515%_ _%L34586%_) '()))))
                            (_%__kont3772137722%_
                             (lambda (_%L34549%_)
                               (cons 'box:
                                     (cons (_%parse133515%_ _%L34549%_) '()))))
                            (_%__kont3772337724%_
                             (lambda (_%L34525%_)
                               (_%parse133515%_ _%L34525%_)))
                            (_%__kont3772537726%_
                             (lambda (_%L34487%_)
                               (cons 'values:
                                     (cons (_%parse-vector33518%_ _%L34487%_)
                                           '()))))
                            (_%__kont3772737728%_
                             (lambda (_%L34459%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33518%_ _%L34459%_)
                                           '()))))
                            (_%__kont3772937730%_
                             (lambda (_%L34420%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33518%_
                                            (foldr (lambda (_%g3443334436%_
                                                            _%g3443434439%_)
                                                     (cons _%g3443334436%_
                                                           _%g3443434439%_))
                                                   '()
                                                   _%L34420%_))
                                           '()))))
                            (_%__kont3773337734%_
                             (lambda (_%L34366%_ _%L34368%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L34368%_)
                                           (cons (_%parse-vector33518%_
                                                  _%L34366%_)
                                                 '())))))
                            (_%__kont3773537736%_
                             (lambda (_%L34336%_ _%L34338%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L34338%_)
                                           (cons (_%parse-class-body33520%_
                                                  _%L34336%_)
                                                 '())))))
                            (_%__kont3773737738%_
                             (lambda (_%L34296%_ _%L34298%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L34298%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L34296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3773937740%_
                             (lambda (_%L34256%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34256%_) '()))))
                            (_%__kont3774137742%_
                             (lambda (_%L34216%_)
                               (_%parse-qq33521%_ _%L34216%_)))
                            (_%__kont3774337744%_
                             (lambda (_%L34172%_ _%L34174%_)
                               (cons 'apply:
                                     (cons _%L34174%_
                                           (cons (_%parse133515%_ _%L34172%_)
                                                 '())))))
                            (_%__kont3774537746%_
                             (lambda (_%L34120%_)
                               (_%parse133515%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%L34120%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33874%_)
                                  (let ((_%$e34131%_
                                         (gx#stx-source _%hd33874%_)))
                                    (if _%$e34131%_
                                        _%$e34131%_
                                        (gx#stx-source _%stx33511%_))))))))
                            (_%__kont3774737748%_
                             (lambda (_%L34094%_) (cons 'any: '())))
                            (_%__kont3774937750%_
                             (lambda (_%L34078%_)
                               (cons 'var: (cons _%L34078%_ '()))))
                            (_%__kont3775137752%_
                             (lambda (_%L34060%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34060%_) '()))))
                            (_%__kont3775337754%_
                             (lambda () (_%parse-error33522%_ _%hd33874%_))))
                        (let* ((_%g3389834071%_
                                (lambda ()
                                  (let ((_%L34060%_ _%__stx3770237703%_))
                                    (if (gx#stx-datum? _%L34060%_)
                                        (_%__kont3775137752%_ _%L34060%_)
                                        (_%__kont3775337754%_)))))
                               (_%g3389734087%_
                                (lambda ()
                                  (let ((_%L34078%_ _%__stx3770237703%_))
                                    (if (and (gx#identifier? _%L34078%_)
                                             (not (gx#ellipsis? _%L34078%_)))
                                        (_%__kont3774937750%_ _%L34078%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3389834071%_))))))
                               (_%g3389634103%_
                                (lambda ()
                                  (let ((_%L34094%_ _%__stx3770237703%_))
                                    (if (gx#underscore? _%L34094%_)
                                        (_%__kont3774737748%_ _%L34094%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3389734087%_))))))
                               (_%__match3802938030%_
                                (lambda (_%e3403134110%_
                                         _%hd3403234114%_
                                         _%tl3403334117%_)
                                  (let ((_%L34120%_ _%hd3403234114%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%L34120%_)
                                        (_%__kont3774537746%_ _%L34120%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3389634103%_))))))
                               (_%__match3796337964%_
                                (lambda (_%e3399934276%_
                                         _%hd3400034280%_
                                         _%tl3400134283%_
                                         _%e3400234286%_
                                         _%hd3400334290%_
                                         _%tl3400434293%_)
                                  (let ((_%L34296%_ _%hd3400334290%_)
                                        (_%L34298%_ _%hd3400034280%_))
                                    (if (and (gx#identifier? _%L34298%_)
                                             (or (gx#free-identifier=?
                                                  _%L34298%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L34298%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L34298%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3773737738%_
                                         _%L34296%_
                                         _%L34298%_)
                                        (if (gx#identifier? _%hd3400034280%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39917_|
                                                 _%hd3400034280%_)
                                                (_%__kont3773937740%_
                                                 _%hd3400334290%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39918_|
                                                     _%hd3400034280%_)
                                                    (_%__kont3774137742%_
                                                     _%hd3400334290%_)
                                                    (_%__match3802938030%_
                                                     _%e3399934276%_
                                                     _%hd3400034280%_
                                                     _%tl3400134283%_)))
                                            (_%__match3802938030%_
                                             _%e3399934276%_
                                             _%hd3400034280%_
                                             _%tl3400134283%_))))))
                               (_%__match3794937950%_
                                (lambda (_%e3399434326%_
                                         _%hd3399534330%_
                                         _%tl3399634333%_)
                                  (let ((_%L34336%_ _%tl3399634333%_)
                                        (_%L34338%_ _%hd3399534330%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L34338%_))
                                        (_%__kont3773537736%_
                                         _%L34336%_
                                         _%L34338%_)
                                        (if (gx#stx-pair? _%tl3399634333%_)
                                            (let ((_%e3400234286%_
                                                   (gx#syntax-e
                                                    _%tl3399634333%_)))
                                              (let ((_%tl3400434293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3400234286%_)))
                                                    (_%hd3400334290%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3400234286%_))))
                                                (if (gx#stx-null?
                                                     _%tl3400434293%_)
                                                    (_%__match3796337964%_
                                                     _%e3399434326%_
                                                     _%hd3399534330%_
                                                     _%tl3399634333%_
                                                     _%e3400234286%_
                                                     _%hd3400334290%_
                                                     _%tl3400434293%_)
                                                    (if (gx#identifier?
                                                         _%hd3399534330%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39917_|
                                                             _%hd3399534330%_)
                                                            (_%__match3802938030%_
                                                             _%e3399434326%_
                                                             _%hd3399534330%_
                                                             _%tl3399634333%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39918_|
                         _%hd3399534330%_)
                        (_%__match3802938030%_
                         _%e3399434326%_
                         _%hd3399534330%_
                         _%tl3399634333%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39919_|
                             _%hd3399534330%_)
                            (if (gx#stx-pair? _%tl3400434293%_)
                                (let ((_%e3402734162%_
                                       (gx#syntax-e _%tl3400434293%_)))
                                  (let ((_%tl3402934169%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3402734162%_)))
                                        (_%hd3402834166%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3402734162%_))))
                                    (if (gx#stx-null? _%tl3402934169%_)
                                        (_%__kont3774337744%_
                                         _%hd3402834166%_
                                         _%hd3400334290%_)
                                        (_%__match3802938030%_
                                         _%e3399434326%_
                                         _%hd3399534330%_
                                         _%tl3399634333%_))))
                                (_%__match3802938030%_
                                 _%e3399434326%_
                                 _%hd3399534330%_
                                 _%tl3399634333%_))
                            (_%__match3802938030%_
                             _%e3399434326%_
                             _%hd3399534330%_
                             _%tl3399634333%_))))
                (_%__match3802938030%_
                 _%e3399434326%_
                 _%hd3399534330%_
                 _%tl3399634333%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3802938030%_
                                             _%e3399434326%_
                                             _%hd3399534330%_
                                             _%tl3399634333%_))))))
                               (_%__match3794337944%_
                                (lambda (_%e3398934356%_
                                         _%hd3399034360%_
                                         _%tl3399134363%_)
                                  (let ((_%L34366%_ _%tl3399134363%_)
                                        (_%L34368%_ _%hd3399034360%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L34368%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3773337734%_
                                         _%L34366%_
                                         _%L34368%_)
                                        (_%__match3794937950%_
                                         _%e3398934356%_
                                         _%hd3399034360%_
                                         _%tl3399134363%_)))))
                               (_%__match3793737938%_
                                (lambda (_%e3397734386%_
                                         _%__splice3773137732%_
                                         _%target3397834390%_
                                         _%tl3398034393%_)
                                  (letrec ((_%loop3398134396%_
                                            (lambda (_%hd3397934400%_
                                                     _%body3398534403%_)
                                              (if (gx#stx-pair?
                                                   _%hd3397934400%_)
                                                  (let ((_%e3398234406%_
                                                         (gx#syntax-e
                                                          _%hd3397934400%_)))
                                                    (let ((_%lp-tl3398434413%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3398234406%_)))
                                                          (_%lp-hd3398334410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3398234406%_))))
                                                      (_%loop3398134396%_
                                                       _%lp-tl3398434413%_
                                                       (cons _%lp-hd3398334410%_
                                                             _%body3398534403%_))))
                                                  (let ((_%body3398634416%_
                                                         (reverse _%body3398534403%_)))
                                                    (_%__kont3772937730%_
                                                     _%body3398634416%_))))))
                                    (_%loop3398134396%_
                                     _%target3397834390%_
                                     '()))))
                               (_%g3388834442%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3770237703%_)
                                      (let ((_%e3397734386%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3770237703%_))))
                                        (if (gx#stx-pair/null? _%e3397734386%_)
                                            (let ((_%__splice3773137732%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3397734386%_
                                                    '0)))
                                              (let ((_%tl3398034393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3773137732%_
                                                        '1)))
                                                    (_%target3397834390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3773137732%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3398034393%_)
                                                    (_%__match3793737938%_
                                                     _%e3397734386%_
                                                     _%__splice3773137732%_
                                                     _%target3397834390%_
                                                     _%tl3398034393%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3389634103%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3389634103%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3389634103%_)))))
                               (_%g3388434559%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3770237703%_)
                                      (let ((_%e3396034545%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3770237703%_))))
                                        (_%__kont3772137722%_ _%e3396034545%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3388834442%_)))))
                               (_%__match3779137792%_
                                (lambda (_%e3391534784%_
                                         _%hd3391634788%_
                                         _%tl3391734791%_)
                                  (let ((_%L34794%_ _%tl3391734791%_))
                                    (if (gx#stx-list? _%L34794%_)
                                        (_%__kont3770937710%_ _%L34794%_)
                                        (_%__match3794337944%_
                                         _%e3391534784%_
                                         _%hd3391634788%_
                                         _%tl3391734791%_)))))
                               (_%__match3778137782%_
                                (lambda (_%e3391134869%_
                                         _%hd3391234873%_
                                         _%tl3391334876%_)
                                  (let ((_%L34879%_ _%tl3391334876%_))
                                    (if (gx#stx-list? _%L34879%_)
                                        (_%__kont3770737708%_ _%L34879%_)
                                        (_%__match3794337944%_
                                         _%e3391134869%_
                                         _%hd3391234873%_
                                         _%tl3391334876%_))))))
                          (if (gx#stx-pair? _%__stx3770237703%_)
                              (let ((_%e3390434954%_
                                     (gx#syntax-e _%__stx3770237703%_)))
                                (let ((_%tl3390634961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3390434954%_)))
                                      (_%hd3390534958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3390434954%_))))
                                  (if (gx#identifier? _%hd3390534958%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39920_|
                                           _%hd3390534958%_)
                                          (if (gx#stx-pair? _%tl3390634961%_)
                                              (let ((_%e3390734964%_
                                                     (gx#syntax-e
                                                      _%tl3390634961%_)))
                                                (let ((_%tl3390934971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3390734964%_)))
                                                      (_%hd3390834968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3390734964%_))))
                                                  (_%__kont3770537706%_
                                                   _%tl3390934971%_
                                                   _%hd3390834968%_)))
                                              (_%__match3794337944%_
                                               _%e3390434954%_
                                               _%hd3390534958%_
                                               _%tl3390634961%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39921_|
                                               _%hd3390534958%_)
                                              (_%__match3778137782%_
                                               _%e3390434954%_
                                               _%hd3390534958%_
                                               _%tl3390634961%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39922_|
                                                   _%hd3390534958%_)
                                                  (_%__match3779137792%_
                                                   _%e3390434954%_
                                                   _%hd3390534958%_
                                                   _%tl3390634961%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39923_|
                                                       _%hd3390534958%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3390634961%_)
                                                          (let ((_%e3392234754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3390634961%_)))
                    (let ((_%tl3392434761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3392234754%_)))
                          (_%hd3392334758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3392234754%_))))
                      (if (gx#stx-null? _%tl3392434761%_)
                          (_%__kont3771137712%_ _%hd3392334758%_)
                          (_%__match3794337944%_
                           _%e3390434954%_
                           _%hd3390534958%_
                           _%tl3390634961%_))))
                  (_%__match3794337944%_
                   _%e3390434954%_
                   _%hd3390534958%_
                   _%tl3390634961%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39924_|
                   _%hd3390534958%_)
                  (if (gx#stx-pair? _%tl3390634961%_)
                      (let ((_%e3393034700%_ (gx#syntax-e _%tl3390634961%_)))
                        (let ((_%tl3393234707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3393034700%_)))
                              (_%hd3393134704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3393034700%_))))
                          (if (gx#stx-pair? _%tl3393234707%_)
                              (let ((_%e3393334710%_
                                     (gx#syntax-e _%tl3393234707%_)))
                                (let ((_%tl3393534717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3393334710%_)))
                                      (_%hd3393434714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3393334710%_))))
                                  (if (gx#stx-null? _%tl3393534717%_)
                                      (_%__kont3771337714%_
                                       _%hd3393434714%_
                                       _%hd3393134704%_)
                                      (_%__match3794337944%_
                                       _%e3390434954%_
                                       _%hd3390534958%_
                                       _%tl3390634961%_))))
                              (_%__match3794337944%_
                               _%e3390434954%_
                               _%hd3390534958%_
                               _%tl3390634961%_))))
                      (_%__match3794337944%_
                       _%e3390434954%_
                       _%hd3390534958%_
                       _%tl3390634961%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39925_|
                       _%hd3390534958%_)
                      (if (gx#stx-pair? _%tl3390634961%_)
                          (let ((_%e3394234644%_
                                 (gx#syntax-e _%tl3390634961%_)))
                            (let ((_%tl3394434651%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3394234644%_)))
                                  (_%hd3394334648%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3394234644%_))))
                              (if (gx#stx-pair? _%tl3394434651%_)
                                  (let ((_%e3394534654%_
                                         (gx#syntax-e _%tl3394434651%_)))
                                    (let ((_%tl3394734661%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3394534654%_)))
                                          (_%hd3394634658%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3394534654%_))))
                                      (_%__kont3771537716%_
                                       _%tl3394734661%_
                                       _%hd3394634658%_
                                       _%hd3394334648%_)))
                                  (_%__match3794337944%_
                                   _%e3390434954%_
                                   _%hd3390534958%_
                                   _%tl3390634961%_))))
                          (_%__match3794337944%_
                           _%e3390434954%_
                           _%hd3390534958%_
                           _%tl3390634961%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39926_|
                           _%hd3390534958%_)
                          (_%__kont3771737718%_ _%tl3390634961%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39927_|
                               _%hd3390534958%_)
                              (if (gx#stx-pair? _%tl3390634961%_)
                                  (let ((_%e3395634576%_
                                         (gx#syntax-e _%tl3390634961%_)))
                                    (let ((_%tl3395834583%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3395634576%_)))
                                          (_%hd3395734580%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3395634576%_))))
                                      (if (gx#stx-null? _%tl3395834583%_)
                                          (_%__kont3771937720%_
                                           _%hd3395734580%_)
                                          (_%__match3794337944%_
                                           _%e3390434954%_
                                           _%hd3390534958%_
                                           _%tl3390634961%_))))
                                  (_%__match3794337944%_
                                   _%e3390434954%_
                                   _%hd3390534958%_
                                   _%tl3390634961%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39928_|
                                   _%hd3390534958%_)
                                  (if (gx#stx-pair? _%tl3390634961%_)
                                      (let ((_%e3396534515%_
                                             (gx#syntax-e _%tl3390634961%_)))
                                        (let ((_%tl3396734522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3396534515%_)))
                                              (_%hd3396634519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3396534515%_))))
                                          (if (gx#stx-null? _%tl3396734522%_)
                                              (_%__kont3772337724%_
                                               _%hd3396634519%_)
                                              (_%__kont3772537726%_
                                               _%tl3390634961%_))))
                                      (_%__kont3772537726%_ _%tl3390634961%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39929_|
                                       _%hd3390534958%_)
                                      (_%__kont3772737728%_ _%tl3390634961%_)
                                      (_%__match3794337944%_
                                       _%e3390434954%_
                                       _%hd3390534958%_
                                       _%tl3390634961%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3794337944%_
                                       _%e3390434954%_
                                       _%hd3390534958%_
                                       _%tl3390634961%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3388434559%_))))))))
                 (_%parse-list33517%_
                  (lambda (_%body33697%_)
                    (let* ((_%__stx3803238033%_ _%body33697%_)
                           (_%g3370333732%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3803238033%_))))
                      (let ((_%__kont3803538036%_
                             (lambda (_%L33856%_)
                               (_%parse133515%_ _%L33856%_)))
                            (_%__kont3803738038%_
                             (lambda (_%L33808%_ _%L33810%_ _%L33811%_)
                               (cons 'splice:
                                     (cons (_%parse133515%_ _%L33811%_)
                                           (cons (_%parse-list33517%_
                                                  _%L33808%_)
                                                 '())))))
                            (_%__kont3803938040%_
                             (lambda (_%L33766%_ _%L33768%_)
                               (cons 'cons:
                                     (cons (_%parse133515%_ _%L33768%_)
                                           (cons (_%parse-list33517%_
                                                  _%L33766%_)
                                                 '())))))
                            (_%__kont3804138042%_
                             (lambda ()
                               (if (gx#stx-null? _%body33697%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33697%_)
                                       (_%parse-error33522%_ _%body33697%_)
                                       (_%parse133515%_ _%body33697%_))))))
                        (let* ((_%__match3808138082%_
                                (lambda (_%e3372433756%_
                                         _%hd3372533760%_
                                         _%tl3372633763%_)
                                  (let ((_%L33766%_ _%tl3372633763%_)
                                        (_%L33768%_ _%hd3372533760%_))
                                    (if (gx#ellipsis? _%L33768%_)
                                        (_%__kont3804138042%_)
                                        (_%__kont3803938040%_
                                         _%L33766%_
                                         _%L33768%_)))))
                               (_%__match3807538076%_
                                (lambda (_%e3371633788%_
                                         _%hd3371733792%_
                                         _%tl3371833795%_
                                         _%e3371933798%_
                                         _%hd3372033802%_
                                         _%tl3372133805%_)
                                  (let ((_%L33808%_ _%tl3372133805%_)
                                        (_%L33810%_ _%hd3372033802%_)
                                        (_%L33811%_ _%hd3371733792%_))
                                    (if (gx#ellipsis? _%L33810%_)
                                        (_%__kont3803738038%_
                                         _%L33808%_
                                         _%L33810%_
                                         _%L33811%_)
                                        (_%__match3808138082%_
                                         _%e3371633788%_
                                         _%hd3371733792%_
                                         _%tl3371833795%_))))))
                          (if (gx#stx-pair? _%__stx3803238033%_)
                              (let ((_%e3370633832%_
                                     (gx#syntax-e _%__stx3803238033%_)))
                                (let ((_%tl3370833839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3370633832%_)))
                                      (_%hd3370733836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3370633832%_))))
                                  (if (gx#stx-datum? _%hd3370733836%_)
                                      (let ((_%e3370933842%_
                                             (gx#stx-e _%hd3370733836%_)))
                                        (if (equal? _%e3370933842%_ '::)
                                            (if (gx#stx-pair? _%tl3370833839%_)
                                                (let ((_%e3371033846%_
                                                       (gx#syntax-e
                                                        _%tl3370833839%_)))
                                                  (let ((_%tl3371233853%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3371033846%_)))
                                                        (_%hd3371133850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3371033846%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3371233853%_)
                                                        (_%__kont3803538036%_
                                                         _%hd3371133850%_)
                                                        (_%__match3807538076%_
                                                         _%e3370633832%_
                                                         _%hd3370733836%_
                                                         _%tl3370833839%_
                                                         _%e3371033846%_
                                                         _%hd3371133850%_
                                                         _%tl3371233853%_))))
                                                (_%__match3808138082%_
                                                 _%e3370633832%_
                                                 _%hd3370733836%_
                                                 _%tl3370833839%_))
                                            (if (gx#stx-pair? _%tl3370833839%_)
                                                (let ((_%e3371933798%_
                                                       (gx#syntax-e
                                                        _%tl3370833839%_)))
                                                  (let ((_%tl3372133805%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3371933798%_)))
                                                        (_%hd3372033802%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3371933798%_))))
                                                    (_%__match3807538076%_
                                                     _%e3370633832%_
                                                     _%hd3370733836%_
                                                     _%tl3370833839%_
                                                     _%e3371933798%_
                                                     _%hd3372033802%_
                                                     _%tl3372133805%_)))
                                                (_%__match3808138082%_
                                                 _%e3370633832%_
                                                 _%hd3370733836%_
                                                 _%tl3370833839%_))))
                                      (if (gx#stx-pair? _%tl3370833839%_)
                                          (let ((_%e3371933798%_
                                                 (gx#syntax-e
                                                  _%tl3370833839%_)))
                                            (let ((_%tl3372133805%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3371933798%_)))
                                                  (_%hd3372033802%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3371933798%_))))
                                              (_%__match3807538076%_
                                               _%e3370633832%_
                                               _%hd3370733836%_
                                               _%tl3370833839%_
                                               _%e3371933798%_
                                               _%hd3372033802%_
                                               _%tl3372133805%_)))
                                          (_%__match3808138082%_
                                           _%e3370633832%_
                                           _%hd3370733836%_
                                           _%tl3370833839%_)))))
                              (_%__kont3804138042%_)))))))
                 (_%parse-vector33518%_
                  (lambda (_%body33694%_)
                    (if (_%simple-vector?33519%_ _%body33694%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133515%_ _%body33694%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33517%_ _%body33694%_)
                                    '())))))
                 (_%simple-vector?33519%_
                  (lambda (_%body33631%_)
                    (let* ((_%__stx3808438085%_ _%body33631%_)
                           (_%g3363533647%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3808438085%_))))
                      (let ((_%__kont3808738088%_
                             (lambda (_%L33675%_ _%L33677%_)
                               (if (gx#ellipsis? _%L33677%_)
                                   '#f
                                   (_%simple-vector?33519%_ _%L33675%_))))
                            (_%__kont3808938090%_
                             (lambda () (gx#stx-null? _%body33631%_))))
                        (if (gx#stx-pair? _%__stx3808438085%_)
                            (let ((_%e3363933665%_
                                   (gx#syntax-e _%__stx3808438085%_)))
                              (let ((_%tl3364133672%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3363933665%_)))
                                    (_%hd3364033669%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3363933665%_))))
                                (_%__kont3808738088%_
                                 _%tl3364133672%_
                                 _%hd3364033669%_)))
                            (_%__kont3808938090%_))))))
                 (_%parse-class-body33520%_
                  (lambda (_%body33540%_)
                    (let _%recur33543%_ ((_%rest33546%_ _%body33540%_))
                      (let* ((_%__stx3810038101%_ _%rest33546%_)
                             (_%g3355033566%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3810038101%_))))
                        (let ((_%__kont3810338104%_
                               (lambda (_%L33604%_ _%L33606%_ _%L33607%_)
                                 (cons _%L33607%_
                                       (cons (_%parse133515%_ _%L33606%_)
                                             (_%recur33543%_ _%L33604%_)))))
                              (_%__kont3810538106%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33546%_)
                                     '()
                                     (_%parse-error33522%_ _%rest33546%_)))))
                          (let ((_%__match3811938120%_
                                 (lambda (_%e3355533584%_
                                          _%hd3355633588%_
                                          _%tl3355733591%_
                                          _%e3355833594%_
                                          _%hd3355933598%_
                                          _%tl3356033601%_)
                                   (let ((_%L33604%_ _%tl3356033601%_)
                                         (_%L33606%_ _%hd3355933598%_)
                                         (_%L33607%_ _%hd3355633588%_))
                                     (if (gx#stx-keyword? _%L33607%_)
                                         (_%__kont3810338104%_
                                          _%L33604%_
                                          _%L33606%_
                                          _%L33607%_)
                                         (_%__kont3810538106%_))))))
                            (if (gx#stx-pair? _%__stx3810038101%_)
                                (let ((_%e3355533584%_
                                       (gx#syntax-e _%__stx3810038101%_)))
                                  (let ((_%tl3355733591%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3355533584%_)))
                                        (_%hd3355633588%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3355533584%_))))
                                    (if (gx#stx-pair? _%tl3355733591%_)
                                        (let ((_%e3355833594%_
                                               (gx#syntax-e _%tl3355733591%_)))
                                          (let ((_%tl3356033601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3355833594%_)))
                                                (_%hd3355933598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3355833594%_))))
                                            (_%__match3811938120%_
                                             _%e3355533584%_
                                             _%hd3355633588%_
                                             _%tl3355733591%_
                                             _%e3355833594%_
                                             _%hd3355933598%_
                                             _%tl3356033601%_)))
                                        (_%__kont3810538106%_))))
                                (_%__kont3810538106%_))))))))
                 (_%parse-qq33521%_
                  (lambda (_%hd33527%_)
                    (let ((_%g3352933536%_
                           (lambda (_%g3353033532%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3353033532%_))))
                      (_%g3352933536%_ _%hd33527%_))))
                 (_%parse-error33522%_
                  (lambda (_%hd33524%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33513%_
                               (cons _%match-stx33513%_
                                     (cons _%stx33511%_
                                           (cons _%hd33524%_ '())))
                               (cons _%stx33511%_ (cons _%hd33524%_ '())))))))
          (_%parse133515%_ _%stx33511%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35201%_)
        (let ((_%match-stx35204%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35201%_
           _%match-stx35204%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39930_
        (let ((_g39931_ (let () (declare (not safe)) (##length _g39930_))))
          (cond ((let () (declare (not safe)) (##fx= _g39931_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39930_))
                ((let () (declare (not safe)) (##fx= _g39931_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39930_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33496%_)
        (let ((__tmp39932
               (lambda (_%E33499%_)
                 (with-exception-handler
                  (let ((_%E!33502%_ (current-exception-handler)))
                    (lambda (_%e33505%_)
                      (if (syntax-error? _%e33505%_)
                          (_%E33499%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33502%_ _%e33505%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33496%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39932))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32231%_)
        (letrec ((_%loop32234%_
                  (lambda (_%ptree32521%_ _%vars32523%_ _%K32524%_)
                    (let* ((_%__stx3821838219%_ _%ptree32521%_)
                           (_%g3253732647%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3821838219%_))))
                      (let ((_%__kont3822138222%_
                             (lambda (_%L33277%_)
                               (let* ((_%__stx3813838139%_ _%L33277%_)
                                      (_%g3329433328%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3813838139%_))))
                                 (let ((_%__kont3814138142%_
                                        (lambda (_%L33477%_)
                                          (_%loop32234%_
                                           _%L33477%_
                                           _%vars32523%_
                                           _%K32524%_)))
                                       (_%__kont3814338144%_
                                        (lambda (_%L33446%_)
                                          (_%loop32234%_
                                           _%L33446%_
                                           _%vars32523%_
                                           _%K32524%_)))
                                       (_%__kont3814538146%_
                                        (lambda (_%L33394%_)
                                          (_%loop32234%_
                                           _%L33394%_
                                           _%vars32523%_
                                           _%K32524%_)))
                                       (_%__kont3814738148%_
                                        (lambda ()
                                          (_%K32524%_ _%vars32523%_))))
                                   (if (gx#stx-pair? _%__stx3813838139%_)
                                       (let ((_%e3329733467%_
                                              (gx#syntax-e
                                               _%__stx3813838139%_)))
                                         (let ((_%tl3329933474%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3329733467%_)))
                                               (_%hd3329833471%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3329733467%_))))
                                           (if (gx#stx-null? _%tl3329933474%_)
                                               (_%__kont3814138142%_
                                                _%hd3329833471%_)
                                               (if (gx#stx-datum?
                                                    _%hd3329833471%_)
                                                   (let ((_%e3330433432%_
                                                          (gx#stx-e
                                                           _%hd3329833471%_)))
                                                     (if (equal? _%e3330433432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3329933474%_)
                     (let ((_%e3330533436%_ (gx#syntax-e _%tl3329933474%_)))
                       (let ((_%tl3330733443%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3330533436%_)))
                             (_%hd3330633440%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3330533436%_))))
                         (if (gx#stx-null? _%tl3330733443%_)
                             (_%__kont3814338144%_ _%hd3330633440%_)
                             (_%__kont3814738148%_))))
                     (_%__kont3814738148%_))
                 (if (equal? _%e3330433432%_ '::)
                     (if (gx#stx-pair? _%tl3329933474%_)
                         (let ((_%e3331333360%_
                                (gx#syntax-e _%tl3329933474%_)))
                           (let ((_%tl3331533367%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3331333360%_)))
                                 (_%hd3331433364%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3331333360%_))))
                             (if (gx#stx-pair? _%tl3331533367%_)
                                 (let ((_%e3331633370%_
                                        (gx#syntax-e _%tl3331533367%_)))
                                   (let ((_%tl3331833377%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3331633370%_)))
                                         (_%hd3331733374%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3331633370%_))))
                                     (if (gx#stx-datum? _%hd3331733374%_)
                                         (let ((_%e3331933380%_
                                                (gx#stx-e _%hd3331733374%_)))
                                           (if (equal? _%e3331933380%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3331833377%_)
                                                   (let ((_%e3332033384%_
                                                          (gx#syntax-e
                                                           _%tl3331833377%_)))
                                                     (let ((_%tl3332233391%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3332033384%_)))
                                                           (_%hd3332133388%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3332033384%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3332233391%_)
                                                           (_%__kont3814538146%_
                                                            _%hd3332133388%_)
                                                           (_%__kont3814738148%_))))
                                                   (_%__kont3814738148%_))
                                               (_%__kont3814738148%_)))
                                         (_%__kont3814738148%_))))
                                 (_%__kont3814738148%_))))
                         (_%__kont3814738148%_))
                     (_%__kont3814738148%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3814738148%_)))))
                                       (_%__kont3814738148%_))))))
                            (_%__kont3822338224%_
                             (lambda (_%L33164%_ _%L33166%_)
                               (let* ((_%__stx3812238123%_ _%L33164%_)
                                      (_%g3318233194%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3812238123%_))))
                                 (let ((_%__kont3812538126%_
                                        (lambda (_%L33222%_ _%L33224%_)
                                          (_%loop32234%_
                                           _%L33224%_
                                           _%vars32523%_
                                           (lambda (_%g3323633238%_)
                                             (_%loop32234%_
                                              (cons _%L33166%_ _%L33222%_)
                                              _%g3323633238%_
                                              _%K32524%_)))))
                                       (_%__kont3812738128%_
                                        (lambda ()
                                          (_%K32524%_ _%vars32523%_))))
                                   (if (gx#stx-pair? _%__stx3812238123%_)
                                       (let ((_%e3318633212%_
                                              (gx#syntax-e
                                               _%__stx3812238123%_)))
                                         (let ((_%tl3318833219%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3318633212%_)))
                                               (_%hd3318733216%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3318633212%_))))
                                           (_%__kont3812538126%_
                                            _%tl3318833219%_
                                            _%hd3318733216%_)))
                                       (_%__kont3812738128%_))))))
                            (_%__kont3822538226%_
                             (lambda (_%L33133%_)
                               (_%loop32234%_
                                _%L33133%_
                                _%vars32523%_
                                _%K32524%_)))
                            (_%__kont3822738228%_
                             (lambda (_%L33079%_ _%L33081%_)
                               (_%loop32234%_
                                _%L33081%_
                                _%vars32523%_
                                (lambda (_%g3309633098%_)
                                  (_%loop32234%_
                                   _%L33079%_
                                   _%g3309633098%_
                                   _%K32524%_)))))
                            (_%__kont3822938230%_
                             (lambda (_%L33015%_ _%L33017%_)
                               (_%loop32234%_
                                _%L33017%_
                                _%vars32523%_
                                (lambda (_%g3303233034%_)
                                  (_%loop32234%_
                                   _%L33015%_
                                   _%g3303233034%_
                                   _%K32524%_)))))
                            (_%__kont3823138232%_
                             (lambda (_%L32960%_)
                               (_%loop32234%_
                                _%L32960%_
                                _%vars32523%_
                                _%K32524%_)))
                            (_%__kont3823338234%_
                             (lambda (_%L32910%_ _%L32912%_)
                               (_%loop-vector32236%_
                                _%L32910%_
                                _%vars32523%_
                                _%K32524%_)))
                            (_%__kont3823538236%_
                             (lambda (_%L32867%_)
                               (_%loop-vector32236%_
                                _%L32867%_
                                _%vars32523%_
                                _%K32524%_)))
                            (_%__kont3823738238%_
                             (lambda (_%L32810%_)
                               (_%loop-class-list32238%_
                                _%L32810%_
                                _%vars32523%_
                                _%K32524%_)))
                            (_%__kont3823938240%_
                             (lambda (_%L32751%_ _%L32753%_)
                               (_%loop32234%_
                                _%L32751%_
                                _%vars32523%_
                                _%K32524%_)))
                            (_%__kont3824138242%_
                             (lambda (_%L32689%_)
                               (if (find (lambda (_%g3270432706%_)
                                           (gx#bound-identifier=?
                                            _%g3270432706%_
                                            _%L32689%_))
                                         _%vars32523%_)
                                   (_%K32524%_ _%vars32523%_)
                                   (_%K32524%_
                                    (cons _%L32689%_ _%vars32523%_)))))
                            (_%__kont3824338244%_
                             (lambda () (_%K32524%_ _%vars32523%_))))
                        (let* ((_%__match3837538376%_
                                (lambda (_%e3259432890%_
                                         _%hd3259532894%_
                                         _%tl3259632897%_
                                         _%e3259732900%_
                                         _%hd3259832904%_
                                         _%tl3259932907%_)
                                  (let ((_%L32910%_ _%hd3259832904%_)
                                        (_%L32912%_ _%hd3259532894%_))
                                    (if (or (gx#stx-eq? 'values: _%L32912%_)
                                            (gx#stx-eq? 'vector: _%L32912%_))
                                        (_%__kont3823338234%_
                                         _%L32910%_
                                         _%L32912%_)
                                        (if (gx#stx-datum? _%hd3259532894%_)
                                            (let ((_%e3260432843%_
                                                   (gx#stx-e
                                                    _%hd3259532894%_)))
                                              (if (equal? _%e3260432843%_
                                                          'struct:)
                                                  (_%__kont3824338244%_)
                                                  (if (equal? _%e3260432843%_
                                                              'class:)
                                                      (_%__kont3824338244%_)
                                                      (if (equal? _%e3260432843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3824338244%_)
                  (if (equal? _%e3260432843%_ 'var:)
                      (_%__kont3824138242%_ _%hd3259832904%_)
                      (_%__kont3824338244%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3824338244%_))))))
                               (_%__match3826938270%_
                                (lambda (_%e3254933154%_
                                         _%hd3255033158%_
                                         _%tl3255133161%_)
                                  (let ((_%L33164%_ _%tl3255133161%_)
                                        (_%L33166%_ _%hd3255033158%_))
                                    (if (or (gx#stx-eq? 'and: _%L33166%_)
                                            (gx#stx-eq? 'or: _%L33166%_))
                                        (_%__kont3822338224%_
                                         _%L33164%_
                                         _%L33166%_)
                                        (if (gx#stx-datum? _%hd3255033158%_)
                                            (let ((_%e3255633119%_
                                                   (gx#stx-e
                                                    _%hd3255033158%_)))
                                              (if (equal? _%e3255633119%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3255133161%_)
                                                      (let ((_%e3255733123%_
                                                             (gx#syntax-e
                                                              _%tl3255133161%_)))
                                                        (let ((_%tl3255933130%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3255733123%_)))
                      (_%hd3255833127%_
                       (let () (declare (not safe)) (##car _%e3255733123%_))))
                  (if (gx#stx-null? _%tl3255933130%_)
                      (_%__kont3822538226%_ _%hd3255833127%_)
                      (_%__kont3824338244%_))))
              (_%__kont3824338244%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3255633119%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3255133161%_)
                                                          (let ((_%e3256633059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3255133161%_)))
                    (let ((_%tl3256833066%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3256633059%_)))
                          (_%hd3256733063%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3256633059%_))))
                      (if (gx#stx-pair? _%tl3256833066%_)
                          (let ((_%e3256933069%_
                                 (gx#syntax-e _%tl3256833066%_)))
                            (let ((_%tl3257133076%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3256933069%_)))
                                  (_%hd3257033073%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3256933069%_))))
                              (if (gx#stx-null? _%tl3257133076%_)
                                  (_%__kont3822738228%_
                                   _%hd3257033073%_
                                   _%hd3256733063%_)
                                  (_%__kont3824338244%_))))
                          (if (gx#stx-null? _%tl3256833066%_)
                              (_%__match3837538376%_
                               _%e3254933154%_
                               _%hd3255033158%_
                               _%tl3255133161%_
                               _%e3256633059%_
                               _%hd3256733063%_
                               _%tl3256833066%_)
                              (_%__kont3824338244%_)))))
                  (_%__kont3824338244%_))
              (if (equal? _%e3255633119%_ 'splice:)
                  (if (gx#stx-pair? _%tl3255133161%_)
                      (let ((_%e3257832995%_ (gx#syntax-e _%tl3255133161%_)))
                        (let ((_%tl3258033002%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3257832995%_)))
                              (_%hd3257932999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3257832995%_))))
                          (if (gx#stx-pair? _%tl3258033002%_)
                              (let ((_%e3258133005%_
                                     (gx#syntax-e _%tl3258033002%_)))
                                (let ((_%tl3258333012%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3258133005%_)))
                                      (_%hd3258233009%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3258133005%_))))
                                  (if (gx#stx-null? _%tl3258333012%_)
                                      (_%__kont3822938230%_
                                       _%hd3258233009%_
                                       _%hd3257932999%_)
                                      (_%__kont3824338244%_))))
                              (if (gx#stx-null? _%tl3258033002%_)
                                  (_%__match3837538376%_
                                   _%e3254933154%_
                                   _%hd3255033158%_
                                   _%tl3255133161%_
                                   _%e3257832995%_
                                   _%hd3257932999%_
                                   _%tl3258033002%_)
                                  (_%__kont3824338244%_)))))
                      (_%__kont3824338244%_))
                  (if (equal? _%e3255633119%_ 'box:)
                      (if (gx#stx-pair? _%tl3255133161%_)
                          (let ((_%e3258932950%_
                                 (gx#syntax-e _%tl3255133161%_)))
                            (let ((_%tl3259132957%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3258932950%_)))
                                  (_%hd3259032954%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3258932950%_))))
                              (if (gx#stx-null? _%tl3259132957%_)
                                  (_%__kont3823138232%_ _%hd3259032954%_)
                                  (_%__kont3824338244%_))))
                          (_%__kont3824338244%_))
                      (if (gx#stx-pair? _%tl3255133161%_)
                          (let ((_%e3259732900%_
                                 (gx#syntax-e _%tl3255133161%_)))
                            (let ((_%tl3259932907%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3259732900%_)))
                                  (_%hd3259832904%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3259732900%_))))
                              (if (gx#stx-null? _%tl3259932907%_)
                                  (_%__match3837538376%_
                                   _%e3254933154%_
                                   _%hd3255033158%_
                                   _%tl3255133161%_
                                   _%e3259732900%_
                                   _%hd3259832904%_
                                   _%tl3259932907%_)
                                  (if (equal? _%e3255633119%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3259932907%_)
                                          (let ((_%e3260832857%_
                                                 (gx#syntax-e
                                                  _%tl3259932907%_)))
                                            (let ((_%tl3261032864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3260832857%_)))
                                                  (_%hd3260932861%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3260832857%_))))
                                              (if (gx#stx-null?
                                                   _%tl3261032864%_)
                                                  (_%__kont3823538236%_
                                                   _%hd3260932861%_)
                                                  (_%__kont3824338244%_))))
                                          (_%__kont3824338244%_))
                                      (if (equal? _%e3255633119%_ 'class:)
                                          (if (gx#stx-pair? _%tl3259932907%_)
                                              (let ((_%e3261932800%_
                                                     (gx#syntax-e
                                                      _%tl3259932907%_)))
                                                (let ((_%tl3262132807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3261932800%_)))
                                                      (_%hd3262032804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3261932800%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3262132807%_)
                                                      (_%__kont3823738238%_
                                                       _%hd3262032804%_)
                                                      (_%__kont3824338244%_))))
                                              (_%__kont3824338244%_))
                                          (if (equal? _%e3255633119%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3259932907%_)
                                                  (let ((_%e3263132741%_
                                                         (gx#syntax-e
                                                          _%tl3259932907%_)))
                                                    (let ((_%tl3263332748%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3263132741%_)))
                                                          (_%hd3263232745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3263132741%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3263332748%_)
                                                          (_%__kont3823938240%_
                                                           _%hd3263232745%_
                                                           _%hd3259832904%_)
                                                          (_%__kont3824338244%_))))
                                                  (_%__kont3824338244%_))
                                              (_%__kont3824338244%_)))))))
                          (_%__kont3824338244%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3255133161%_)
                                                (let ((_%e3259732900%_
                                                       (gx#syntax-e
                                                        _%tl3255133161%_)))
                                                  (let ((_%tl3259932907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3259732900%_)))
                                                        (_%hd3259832904%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3259732900%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3259932907%_)
                                                        (_%__match3837538376%_
                                                         _%e3254933154%_
                                                         _%hd3255033158%_
                                                         _%tl3255133161%_
                                                         _%e3259732900%_
                                                         _%hd3259832904%_
                                                         _%tl3259932907%_)
                                                        (_%__kont3824338244%_))))
                                                (_%__kont3824338244%_))))))))
                          (if (gx#stx-pair? _%__stx3821838219%_)
                              (let ((_%e3254033253%_
                                     (gx#syntax-e _%__stx3821838219%_)))
                                (let ((_%tl3254233260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3254033253%_)))
                                      (_%hd3254133257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3254033253%_))))
                                  (if (gx#stx-datum? _%hd3254133257%_)
                                      (let ((_%e3254333263%_
                                             (gx#stx-e _%hd3254133257%_)))
                                        (if (equal? _%e3254333263%_ '?:)
                                            (if (gx#stx-pair? _%tl3254233260%_)
                                                (let ((_%e3254433267%_
                                                       (gx#syntax-e
                                                        _%tl3254233260%_)))
                                                  (let ((_%tl3254633274%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3254433267%_)))
                                                        (_%hd3254533271%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3254433267%_))))
                                                    (_%__kont3822138222%_
                                                     _%tl3254633274%_)))
                                                (_%__match3826938270%_
                                                 _%e3254033253%_
                                                 _%hd3254133257%_
                                                 _%tl3254233260%_))
                                            (_%__match3826938270%_
                                             _%e3254033253%_
                                             _%hd3254133257%_
                                             _%tl3254233260%_)))
                                      (_%__match3826938270%_
                                       _%e3254033253%_
                                       _%hd3254133257%_
                                       _%tl3254233260%_))))
                              (_%__kont3824338244%_)))))))
                 (_%loop-vector32236%_
                  (lambda (_%body32397%_ _%vars32399%_ _%K32400%_)
                    (let* ((_%__stx3847638477%_ _%body32397%_)
                           (_%g3240332426%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3847638477%_))))
                      (let ((_%__kont3847938480%_
                             (lambda (_%L32503%_)
                               (_%loop-list32237%_
                                _%L32503%_
                                _%vars32399%_
                                _%K32400%_)))
                            (_%__kont3848138482%_
                             (lambda (_%L32457%_)
                               (_%loop32234%_
                                _%L32457%_
                                _%vars32399%_
                                _%K32400%_))))
                        (if (gx#stx-pair? _%__stx3847638477%_)
                            (let ((_%e3240632479%_
                                   (gx#syntax-e _%__stx3847638477%_)))
                              (let ((_%tl3240832486%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3240632479%_)))
                                    (_%hd3240732483%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3240632479%_))))
                                (if (gx#stx-datum? _%hd3240732483%_)
                                    (let ((_%e3240932489%_
                                           (gx#stx-e _%hd3240732483%_)))
                                      (if (equal? _%e3240932489%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3240832486%_)
                                              (let ((_%e3241032493%_
                                                     (gx#syntax-e
                                                      _%tl3240832486%_)))
                                                (let ((_%tl3241232500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3241032493%_)))
                                                      (_%hd3241132497%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3241032493%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3241232500%_)
                                                      (_%__kont3847938480%_
                                                       _%hd3241132497%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3240332426%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3240332426%_)))
                                          (if (equal? _%e3240932489%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3240832486%_)
                                                  (let ((_%e3241832447%_
                                                         (gx#syntax-e
                                                          _%tl3240832486%_)))
                                                    (let ((_%tl3242032454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3241832447%_)))
                                                          (_%hd3241932451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3241832447%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3242032454%_)
                                                          (_%__kont3848138482%_
                                                           _%hd3241932451%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3240332426%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3240332426%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3240332426%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3240332426%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3240332426%_)))))))
                 (_%loop-list32237%_
                  (lambda (_%rest32327%_ _%vars32329%_ _%K32330%_)
                    (let* ((_%__stx3852638527%_ _%rest32327%_)
                           (_%g3233332345%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3852638527%_))))
                      (let ((_%__kont3852938530%_
                             (lambda (_%L32373%_ _%L32375%_)
                               (_%loop32234%_
                                _%L32375%_
                                _%vars32329%_
                                (lambda (_%g3238732389%_)
                                  (_%loop-list32237%_
                                   _%L32373%_
                                   _%g3238732389%_
                                   _%K32330%_)))))
                            (_%__kont3853138532%_
                             (lambda () (_%K32330%_ _%vars32329%_))))
                        (if (gx#stx-pair? _%__stx3852638527%_)
                            (let ((_%e3233732363%_
                                   (gx#syntax-e _%__stx3852638527%_)))
                              (let ((_%tl3233932370%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3233732363%_)))
                                    (_%hd3233832367%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3233732363%_))))
                                (_%__kont3852938530%_
                                 _%tl3233932370%_
                                 _%hd3233832367%_)))
                            (_%__kont3853138532%_))))))
                 (_%loop-class-list32238%_
                  (lambda (_%rest32240%_ _%vars32242%_ _%K32243%_)
                    (let* ((_%__stx3854238543%_ _%rest32240%_)
                           (_%g3224632261%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3854238543%_))))
                      (let ((_%__kont3854538546%_
                             (lambda (_%L32299%_ _%L32301%_)
                               (_%loop32234%_
                                _%L32301%_
                                _%vars32242%_
                                (lambda (_%g3231732319%_)
                                  (_%loop-class-list32238%_
                                   _%L32299%_
                                   _%g3231732319%_
                                   _%K32243%_)))))
                            (_%__kont3854738548%_
                             (lambda () (_%K32243%_ _%vars32242%_))))
                        (if (gx#stx-pair? _%__stx3854238543%_)
                            (let ((_%e3225032279%_
                                   (gx#syntax-e _%__stx3854238543%_)))
                              (let ((_%tl3225232286%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3225032279%_)))
                                    (_%hd3225132283%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3225032279%_))))
                                (if (gx#stx-pair? _%tl3225232286%_)
                                    (let ((_%e3225332289%_
                                           (gx#syntax-e _%tl3225232286%_)))
                                      (let ((_%tl3225532296%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3225332289%_)))
                                            (_%hd3225432293%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3225332289%_))))
                                        (_%__kont3854538546%_
                                         _%tl3225532296%_
                                         _%hd3225432293%_)))
                                    (_%__kont3854738548%_))))
                            (_%__kont3854738548%_)))))))
          (_%loop32234%_ _%ptree32231%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29157%_ _%tgt29159%_ _%ptree29160%_ _%K29161%_ _%E29162%_)
        (letrec ((_%generate129164%_
                  (lambda (_%tgt30430%_ _%ptree30432%_ _%K30433%_ _%E30434%_)
                    (let* ((_%g3043630444%_
                            (lambda (_%g3043730440%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3043730440%_)))
                           (_%g3043532227%_
                            (lambda (_%g3043730448%_)
                              ((lambda (_%L30451%_)
                                 (let* ((_%__stx3877838779%_ _%ptree30432%_)
                                        (_%g3047830620%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3877838779%_))))
                                   (let ((_%__kont3878138782%_
                                          (lambda (_%L31942%_ _%L31944%_)
                                            (let* ((_%__stx3869638697%_
                                                    _%L31942%_)
                                                   (_%g3196131996%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3869638697%_))))
                                              (let ((_%__kont3869938700%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31944%_ (cons _%L30451%_ '())))
                           (cons _%K30433%_ (cons _%E30434%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3870138702%_
                                                     (lambda (_%L32197%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31944%_ (cons _%L30451%_ '())))
                           (cons (_%generate129164%_
                                  _%tgt30430%_
                                  _%L32197%_
                                  _%K30433%_
                                  _%E30434%_)
                                 (cons _%E30434%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3870338704%_
                                                     (lambda (_%L32135%_)
                                                       (let* ((_%g3214932157%_
                                                               (lambda (_%g3215032153%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3215032153%_)))
                      (_%g3214832176%_
                       (lambda (_%g3215032161%_)
                         ((lambda (_%L32164%_)
                            (cons 'let
                                  (cons (cons (cons _%L32164%_
                                                    (cons (cons _%L31944%_
                                                                (cons _%L30451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%L32164%_
                                                          (cons (_%generate129164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L32164%_
                         _%L32135%_
                         _%K30433%_
                         _%E30434%_)
                        (cons _%E30434%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3215032161%_))))
                 (_%g3214832176%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3870538706%_
                                                     (lambda (_%L32051%_
                                                              _%L32053%_)
                                                       (let* ((_%g3207332081%_
                                                               (lambda (_%g3207432077%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3207432077%_)))
                      (_%g3207232100%_
                       (lambda (_%g3207432085%_)
                         ((lambda (_%L32088%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%L31944%_
                                                    (cons _%L30451%_ '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%L32088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%L32053%_ (cons _%L30451%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129164%_
                         _%L32088%_
                         _%L32051%_
                         _%K30433%_
                         _%E30434%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30434%_ '())))))
                          _%g3207432085%_))))
                 (_%g3207232100%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3195832208%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3869638697%_)
                                                             (let ((_%e3196432187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3869638697%_)))
                       (let ((_%tl3196632194%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3196432187%_)))
                             (_%hd3196532191%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3196432187%_))))
                         (if (gx#stx-null? _%tl3196632194%_)
                             (_%__kont3870138702%_ _%hd3196532191%_)
                             (if (gx#stx-datum? _%hd3196532191%_)
                                 (let ((_%e3197132121%_
                                        (gx#stx-e _%hd3196532191%_)))
                                   (if (equal? _%e3197132121%_ '=>:)
                                       (if (gx#stx-pair? _%tl3196632194%_)
                                           (let ((_%e3197232125%_
                                                  (gx#syntax-e
                                                   _%tl3196632194%_)))
                                             (let ((_%tl3197432132%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3197232125%_)))
                                                   (_%hd3197332129%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3197232125%_))))
                                               (if (gx#stx-null?
                                                    _%tl3197432132%_)
                                                   (_%__kont3870338704%_
                                                    _%hd3197332129%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3196131996%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3196131996%_)))
                                       (if (equal? _%e3197132121%_ '::)
                                           (if (gx#stx-pair? _%tl3196632194%_)
                                               (let ((_%e3198132017%_
                                                      (gx#syntax-e
                                                       _%tl3196632194%_)))
                                                 (let ((_%tl3198332024%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3198132017%_)))
                                                       (_%hd3198232021%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3198132017%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3198332024%_)
                                                       (let ((_%e3198432027%_
                                                              (gx#syntax-e
                                                               _%tl3198332024%_)))
                                                         (let ((_%tl3198632034%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3198432027%_)))
                       (_%hd3198532031%_
                        (let () (declare (not safe)) (##car _%e3198432027%_))))
                   (if (gx#stx-datum? _%hd3198532031%_)
                       (let ((_%e3198732037%_ (gx#stx-e _%hd3198532031%_)))
                         (if (equal? _%e3198732037%_ '=>:)
                             (if (gx#stx-pair? _%tl3198632034%_)
                                 (let ((_%e3198832041%_
                                        (gx#syntax-e _%tl3198632034%_)))
                                   (let ((_%tl3199032048%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3198832041%_)))
                                         (_%hd3198932045%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3198832041%_))))
                                     (if (gx#stx-null? _%tl3199032048%_)
                                         (_%__kont3870538706%_
                                          _%hd3198932045%_
                                          _%hd3198232021%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3196131996%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3196131996%_)))
                             (let () (declare (not safe)) (_%g3196131996%_))))
                       (let () (declare (not safe)) (_%g3196131996%_)))))
               (let () (declare (not safe)) (_%g3196131996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3196131996%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3196131996%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3196131996%_))))))
                     (let () (declare (not safe)) (_%g3196131996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3869638697%_)
                                                      (_%__kont3869938700%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3195832208%_))))))))
                                         (_%__kont3878338784%_
                                          (lambda (_%L31839%_)
                                            (let* ((_%__stx3868038681%_
                                                    _%L31839%_)
                                                   (_%g3185231864%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3868038681%_))))
                                              (let ((_%__kont3868338684%_
                                                     (lambda (_%L31892%_
                                                              _%L31894%_)
                                                       (_%generate129164%_
                                                        _%tgt30430%_
                                                        _%L31894%_
                                                        (_%generate129164%_
                                                         _%tgt30430%_
                                                         (cons 'and:
                                                               _%L31892%_)
                                                         _%K30433%_
                                                         _%E30434%_)
                                                        _%E30434%_)))
                                                    (_%__kont3868538686%_
                                                     (lambda () _%K30433%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3868038681%_)
                                                    (let ((_%e3185631882%_
                                                           (gx#syntax-e
                                                            _%__stx3868038681%_)))
                                                      (let ((_%tl3185831889%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3185631882%_)))
                    (_%hd3185731886%_
                     (let () (declare (not safe)) (##car _%e3185631882%_))))
                (_%__kont3868338684%_ _%tl3185831889%_ _%hd3185731886%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3868538686%_))))))
                                         (_%__kont3878538786%_
                                          (lambda (_%L31746%_)
                                            (let* ((_%__stx3866438665%_
                                                    _%L31746%_)
                                                   (_%g3175931771%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3866438665%_))))
                                              (let ((_%__kont3866738668%_
                                                     (lambda (_%L31799%_
                                                              _%L31801%_)
                                                       (_%generate129164%_
                                                        _%tgt30430%_
                                                        _%L31801%_
                                                        _%K30433%_
                                                        (_%generate129164%_
                                                         _%tgt30430%_
                                                         (cons 'or: _%L31799%_)
                                                         _%K30433%_
                                                         _%E30434%_))))
                                                    (_%__kont3866938670%_
                                                     (lambda () _%E30434%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3866438665%_)
                                                    (let ((_%e3176331789%_
                                                           (gx#syntax-e
                                                            _%__stx3866438665%_)))
                                                      (let ((_%tl3176531796%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3176331789%_)))
                    (_%hd3176431793%_
                     (let () (declare (not safe)) (##car _%e3176331789%_))))
                (_%__kont3866738668%_ _%tl3176531796%_ _%hd3176431793%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3866938670%_))))))
                                         (_%__kont3878738788%_
                                          (lambda (_%L31711%_)
                                            (_%generate129164%_
                                             _%tgt30430%_
                                             _%L31711%_
                                             _%E30434%_
                                             _%K30433%_)))
                                         (_%__kont3878938790%_
                                          (lambda (_%L31585%_ _%L31587%_)
                                            (let* ((_%g3160431619%_
                                                    (lambda (_%g3160531615%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3160531615%_)))
                                                   (_%g3160331676%_
                                                    (lambda (_%g3160531623%_)
                                                      (if (gx#stx-pair?
                                                           _%g3160531623%_)
                                                          (let ((_%e3160831626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3160531623%_)))
                    (let ((_%hd3160931630%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3160831626%_)))
                          (_%tl3161031633%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3160831626%_))))
                      (if (gx#stx-pair? _%tl3161031633%_)
                          (let ((_%e3161131636%_
                                 (gx#syntax-e _%tl3161031633%_)))
                            (let ((_%hd3161231640%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3161131636%_)))
                                  (_%tl3161331643%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3161131636%_))))
                              (if (gx#stx-null? _%tl3161331643%_)
                                  ((lambda (_%L31646%_ _%L31648%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%L30451%_ '()))
                                                 (cons (let ((_%hd-pat31664%_
                                                              (gx#stx-e
                                                               _%L31587%_))
                                                             (_%tl-pat31666%_
                                                              (gx#stx-e
                                                               _%L31585%_)))
                                                         (if (and (equal? _%hd-pat31664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31666%_ '(any:)))
                     _%K30433%_
                     (if (equal? _%tl-pat31666%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%L31648%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129164%_
                                            _%L31648%_
                                            _%L31587%_
                                            _%K30433%_
                                            _%E30434%_)
                                           '())))
                         (if (equal? _%hd-pat31664%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%L31646%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L30451%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129164%_
                                                _%L31646%_
                                                _%L31585%_
                                                _%K30433%_
                                                _%E30434%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%L31648%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%L30451%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L31646%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30451%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129164%_
                                                _%L31648%_
                                                _%L31587%_
                                                (_%generate129164%_
                                                 _%L31646%_
                                                 _%L31585%_
                                                 _%K30433%_
                                                 _%E30434%_)
                                                _%E30434%_)
                                               '())))))))
               (cons _%E30434%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3161231640%_
                                   _%hd3160931630%_)
                                  (_%g3160431619%_ _%g3160531623%_))))
                          (_%g3160431619%_ _%g3160531623%_))))
                  (_%g3160431619%_ _%g3160531623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3160331676%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3879138792%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%L30451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30433%_ (cons _%E30434%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3879338794%_
                                          (lambda (_%L31501%_ _%L31503%_)
                                            (_%generate-splice29166%_
                                             _%tgt30430%_
                                             _%L31503%_
                                             _%L31501%_
                                             _%K30433%_
                                             _%E30434%_)))
                                         (_%__kont3879538796%_
                                          (lambda (_%L31415%_)
                                            (let* ((_%g3142931437%_
                                                    (lambda (_%g3143031433%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3143031433%_)))
                                                   (_%g3142831456%_
                                                    (lambda (_%g3143031441%_)
                                                      ((lambda (_%L31444%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%L30451%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%L31444%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%L30451%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129164%_
                                                      _%L31444%_
                                                      _%L31415%_
                                                      _%K30433%_
                                                      _%E30434%_)
                                                     '())))
                                   (cons _%E30434%_ '())))))
               _%g3143031441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3142831456%_
                                               (gx#genident 'e)))))
                                         (_%__kont3879738798%_
                                          (lambda (_%L31220%_)
                                            (let* ((_%__stx3861438615%_
                                                    _%L31220%_)
                                                   (_%g3123531258%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3861438615%_))))
                                              (let ((_%__kont3861738618%_
                                                     (lambda (_%L31335%_)
                                                       (let* ((_%g3134931357%_
                                                               (lambda (_%g3135031353%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3135031353%_)))
                      (_%g3134831376%_
                       (lambda (_%g3135031361%_)
                         ((lambda (_%L31364%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%L30451%_
                                                                '()))
                                                    (cons _%L31364%_ '())))
                                        (cons (_%generate-simple-vector29167%_
                                               _%tgt30430%_
                                               _%L31335%_
                                               '0
                                               '##values-ref
                                               _%K30433%_
                                               _%E30434%_)
                                              (cons _%E30434%_ '())))))
                          _%g3135031361%_))))
                 (_%g3134831376%_ (gx#stx-length _%L31335%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3861938620%_
                                                     (lambda (_%L31289%_)
                                                       (_%generate-list-vector29168%_
                                                        _%tgt30430%_
                                                        _%L31289%_
                                                        'values->list
                                                        _%K30433%_
                                                        _%E30434%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3861438615%_)
                                                    (let ((_%e3123831311%_
                                                           (gx#syntax-e
                                                            _%__stx3861438615%_)))
                                                      (let ((_%tl3124031318%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3123831311%_)))
                    (_%hd3123931315%_
                     (let () (declare (not safe)) (##car _%e3123831311%_))))
                (if (gx#stx-datum? _%hd3123931315%_)
                    (let ((_%e3124131321%_ (gx#stx-e _%hd3123931315%_)))
                      (if (equal? _%e3124131321%_ 'simple:)
                          (if (gx#stx-pair? _%tl3124031318%_)
                              (let ((_%e3124231325%_
                                     (gx#syntax-e _%tl3124031318%_)))
                                (let ((_%tl3124431332%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3124231325%_)))
                                      (_%hd3124331329%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3124231325%_))))
                                  (if (gx#stx-null? _%tl3124431332%_)
                                      (_%__kont3861738618%_ _%hd3124331329%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3123531258%_)))))
                              (let () (declare (not safe)) (_%g3123531258%_)))
                          (if (equal? _%e3124131321%_ 'list:)
                              (if (gx#stx-pair? _%tl3124031318%_)
                                  (let ((_%e3125031279%_
                                         (gx#syntax-e _%tl3124031318%_)))
                                    (let ((_%tl3125231286%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3125031279%_)))
                                          (_%hd3125131283%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3125031279%_))))
                                      (if (gx#stx-null? _%tl3125231286%_)
                                          (_%__kont3861938620%_
                                           _%hd3125131283%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3123531258%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3123531258%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3123531258%_)))))
                    (let () (declare (not safe)) (_%g3123531258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3123531258%_)))))))
                                         (_%__kont3879938800%_
                                          (lambda (_%L31025%_)
                                            (let* ((_%__stx3856438565%_
                                                    _%L31025%_)
                                                   (_%g3104031063%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3856438565%_))))
                                              (let ((_%__kont3856738568%_
                                                     (lambda (_%L31140%_)
                                                       (let* ((_%g3115431162%_
                                                               (lambda (_%g3115531158%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3115531158%_)))
                      (_%g3115331181%_
                       (lambda (_%g3115531166%_)
                         ((lambda (_%L31169%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%L30451%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%L30451%_ '()))
                              (cons _%L31169%_ '())))
                  (cons (_%generate-simple-vector29167%_
                         _%tgt30430%_
                         _%L31140%_
                         '0
                         '##vector-ref
                         _%K30433%_
                         _%E30434%_)
                        (cons _%E30434%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30434%_ '())))))
                          _%g3115531166%_))))
                 (_%g3115331181%_ (gx#stx-length _%L31140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3856938570%_
                                                     (lambda (_%L31094%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%L30451%_ '()))
                           (cons (_%generate-list-vector29168%_
                                  _%tgt30430%_
                                  _%L31094%_
                                  'vector->list
                                  _%K30433%_
                                  _%E30434%_)
                                 (cons _%E30434%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3856438565%_)
                                                    (let ((_%e3104331116%_
                                                           (gx#syntax-e
                                                            _%__stx3856438565%_)))
                                                      (let ((_%tl3104531123%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3104331116%_)))
                    (_%hd3104431120%_
                     (let () (declare (not safe)) (##car _%e3104331116%_))))
                (if (gx#stx-datum? _%hd3104431120%_)
                    (let ((_%e3104631126%_ (gx#stx-e _%hd3104431120%_)))
                      (if (equal? _%e3104631126%_ 'simple:)
                          (if (gx#stx-pair? _%tl3104531123%_)
                              (let ((_%e3104731130%_
                                     (gx#syntax-e _%tl3104531123%_)))
                                (let ((_%tl3104931137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3104731130%_)))
                                      (_%hd3104831134%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3104731130%_))))
                                  (if (gx#stx-null? _%tl3104931137%_)
                                      (_%__kont3856738568%_ _%hd3104831134%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3104031063%_)))))
                              (let () (declare (not safe)) (_%g3104031063%_)))
                          (if (equal? _%e3104631126%_ 'list:)
                              (if (gx#stx-pair? _%tl3104531123%_)
                                  (let ((_%e3105531084%_
                                         (gx#syntax-e _%tl3104531123%_)))
                                    (let ((_%tl3105731091%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3105531084%_)))
                                          (_%hd3105631088%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3105531084%_))))
                                      (if (gx#stx-null? _%tl3105731091%_)
                                          (_%__kont3856938570%_
                                           _%hd3105631088%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3104031063%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3104031063%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3104031063%_)))))
                    (let () (declare (not safe)) (_%g3104031063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3104031063%_)))))))
                                         (_%__kont3880138802%_
                                          (lambda (_%L30976%_ _%L30978%_)
                                            (_%generate-struct29169%_
                                             (gx#stx-e _%L30978%_)
                                             _%tgt30430%_
                                             _%L30976%_
                                             _%K30433%_
                                             _%E30434%_)))
                                         (_%__kont3880338804%_
                                          (lambda (_%L30917%_ _%L30919%_)
                                            (_%generate-class29172%_
                                             (gx#stx-e _%L30919%_)
                                             _%tgt30430%_
                                             _%L30917%_
                                             _%K30433%_
                                             _%E30434%_)))
                                         (_%__kont3880538806%_
                                          (lambda (_%L30814%_)
                                            (let* ((_%g3082830836%_
                                                    (lambda (_%g3082930832%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3082930832%_)))
                                                   (_%g3082730855%_
                                                    (lambda (_%g3082930840%_)
                                                      ((lambda (_%L30843%_)
                                                         (cons 'if
                                                               (cons (cons _%L30843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%L30451%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L30814%_ '()))
                                               '())))
                             (cons _%K30433%_ (cons _%E30434%_ '())))))
               _%g3082930840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3082730855%_
                                               (let ((_%e30859%_
                                                      (gx#stx-e _%L30814%_)))
                                                 (if (or (symbol? _%e30859%_)
                                                         (keyword? _%e30859%_)
                                                         (immediate?
                                                          _%e30859%_))
                                                     '##eq?
                                                     (if (number? _%e30859%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3880738808%_
                                          (lambda (_%L30734%_ _%L30736%_)
                                            (let* ((_%g3075230760%_
                                                    (lambda (_%g3075330756%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3075330756%_)))
                                                   (_%g3075130779%_
                                                    (lambda (_%g3075330764%_)
                                                      ((lambda (_%L30767%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%L30767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%L30736%_
                                                     (cons _%L30451%_ '()))
                                               '()))
                                   '())
                             (cons (_%generate129164%_
                                    _%L30767%_
                                    _%L30734%_
                                    _%K30433%_
                                    _%E30434%_)
                                   '()))))
               _%g3075330764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3075130779%_
                                               (gx#genident 'e)))))
                                         (_%__kont3880938810%_
                                          (lambda (_%L30676%_)
                                            (cons 'let
                                                  (cons (cons (cons _%L30676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30451%_ '()))
                      '())
                (cons _%K30433%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3881138812%_
                                          (lambda () _%K30433%_)))
                                     (if (gx#stx-pair? _%__stx3877838779%_)
                                         (let ((_%e3048231918%_
                                                (gx#syntax-e
                                                 _%__stx3877838779%_)))
                                           (let ((_%tl3048431925%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3048231918%_)))
                                                 (_%hd3048331922%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3048231918%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3048331922%_)
                                                 (let ((_%e3048531928%_
                                                        (gx#stx-e
                                                         _%hd3048331922%_)))
                                                   (if (equal? _%e3048531928%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3048431925%_)
                                                           (let ((_%e3048631932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3048431925%_)))
                     (let ((_%tl3048831939%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3048631932%_)))
                           (_%hd3048731936%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3048631932%_))))
                       (_%__kont3878138782%_
                        _%tl3048831939%_
                        _%hd3048731936%_)))
                   (let () (declare (not safe)) (_%g3047830620%_)))
               (if (equal? _%e3048531928%_ 'and:)
                   (_%__kont3878338784%_ _%tl3048431925%_)
                   (if (equal? _%e3048531928%_ 'or:)
                       (_%__kont3878538786%_ _%tl3048431925%_)
                       (if (equal? _%e3048531928%_ 'not:)
                           (if (gx#stx-pair? _%tl3048431925%_)
                               (let ((_%e3050431701%_
                                      (gx#syntax-e _%tl3048431925%_)))
                                 (let ((_%tl3050631708%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3050431701%_)))
                                       (_%hd3050531705%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3050431701%_))))
                                   (if (gx#stx-null? _%tl3050631708%_)
                                       (_%__kont3878738788%_ _%hd3050531705%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3047830620%_)))))
                               (let () (declare (not safe)) (_%g3047830620%_)))
                           (if (equal? _%e3048531928%_ 'cons:)
                               (if (gx#stx-pair? _%tl3048431925%_)
                                   (let ((_%e3051331565%_
                                          (gx#syntax-e _%tl3048431925%_)))
                                     (let ((_%tl3051531572%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3051331565%_)))
                                           (_%hd3051431569%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3051331565%_))))
                                       (if (gx#stx-pair? _%tl3051531572%_)
                                           (let ((_%e3051631575%_
                                                  (gx#syntax-e
                                                   _%tl3051531572%_)))
                                             (let ((_%tl3051831582%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3051631575%_)))
                                                   (_%hd3051731579%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3051631575%_))))
                                               (if (gx#stx-null?
                                                    _%tl3051831582%_)
                                                   (_%__kont3878938790%_
                                                    _%hd3051731579%_
                                                    _%hd3051431569%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3047830620%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3047830620%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3047830620%_)))
                               (if (equal? _%e3048531928%_ 'null:)
                                   (if (gx#stx-null? _%tl3048431925%_)
                                       (_%__kont3879138792%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3047830620%_)))
                                   (if (equal? _%e3048531928%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3048431925%_)
                                           (let ((_%e3052931481%_
                                                  (gx#syntax-e
                                                   _%tl3048431925%_)))
                                             (let ((_%tl3053131488%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3052931481%_)))
                                                   (_%hd3053031485%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3052931481%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3053131488%_)
                                                   (let ((_%e3053231491%_
                                                          (gx#syntax-e
                                                           _%tl3053131488%_)))
                                                     (let ((_%tl3053431498%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3053231491%_)))
                                                           (_%hd3053331495%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3053231491%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3053431498%_)
                                                           (_%__kont3879338794%_
                                                            _%hd3053331495%_
                                                            _%hd3053031485%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3047830620%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3047830620%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3047830620%_)))
                                       (if (equal? _%e3048531928%_ 'box:)
                                           (if (gx#stx-pair? _%tl3048431925%_)
                                               (let ((_%e3054031405%_
                                                      (gx#syntax-e
                                                       _%tl3048431925%_)))
                                                 (let ((_%tl3054231412%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3054031405%_)))
                                                       (_%hd3054131409%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3054031405%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3054231412%_)
                                                       (_%__kont3879538796%_
                                                        _%hd3054131409%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3047830620%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3047830620%_)))
                                           (if (equal? _%e3048531928%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3048431925%_)
                                                   (let ((_%e3054831210%_
                                                          (gx#syntax-e
                                                           _%tl3048431925%_)))
                                                     (let ((_%tl3055031217%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3054831210%_)))
                                                           (_%hd3054931214%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3054831210%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3055031217%_)
                                                           (_%__kont3879738798%_
                                                            _%hd3054931214%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3047830620%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3047830620%_)))
                                               (if (equal? _%e3048531928%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3048431925%_)
                                                       (let ((_%e3055631015%_
                                                              (gx#syntax-e
                                                               _%tl3048431925%_)))
                                                         (let ((_%tl3055831022%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3055631015%_)))
                       (_%hd3055731019%_
                        (let () (declare (not safe)) (##car _%e3055631015%_))))
                   (if (gx#stx-null? _%tl3055831022%_)
                       (_%__kont3879938800%_ _%hd3055731019%_)
                       (let () (declare (not safe)) (_%g3047830620%_)))))
               (let () (declare (not safe)) (_%g3047830620%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3048531928%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3048431925%_)
                                                           (let ((_%e3056530956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3048431925%_)))
                     (let ((_%tl3056730963%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3056530956%_)))
                           (_%hd3056630960%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3056530956%_))))
                       (if (gx#stx-pair? _%tl3056730963%_)
                           (let ((_%e3056830966%_
                                  (gx#syntax-e _%tl3056730963%_)))
                             (let ((_%tl3057030973%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3056830966%_)))
                                   (_%hd3056930970%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3056830966%_))))
                               (if (gx#stx-null? _%tl3057030973%_)
                                   (_%__kont3880138802%_
                                    _%hd3056930970%_
                                    _%hd3056630960%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3047830620%_)))))
                           (let () (declare (not safe)) (_%g3047830620%_)))))
                   (let () (declare (not safe)) (_%g3047830620%_)))
               (if (equal? _%e3048531928%_ 'class:)
                   (if (gx#stx-pair? _%tl3048431925%_)
                       (let ((_%e3057730897%_ (gx#syntax-e _%tl3048431925%_)))
                         (let ((_%tl3057930904%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3057730897%_)))
                               (_%hd3057830901%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3057730897%_))))
                           (if (gx#stx-pair? _%tl3057930904%_)
                               (let ((_%e3058030907%_
                                      (gx#syntax-e _%tl3057930904%_)))
                                 (let ((_%tl3058230914%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3058030907%_)))
                                       (_%hd3058130911%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3058030907%_))))
                                   (if (gx#stx-null? _%tl3058230914%_)
                                       (_%__kont3880338804%_
                                        _%hd3058130911%_
                                        _%hd3057830901%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3047830620%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3047830620%_)))))
                       (let () (declare (not safe)) (_%g3047830620%_)))
                   (if (equal? _%e3048531928%_ 'datum:)
                       (if (gx#stx-pair? _%tl3048431925%_)
                           (let ((_%e3058830804%_
                                  (gx#syntax-e _%tl3048431925%_)))
                             (let ((_%tl3059030811%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3058830804%_)))
                                   (_%hd3058930808%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3058830804%_))))
                               (if (gx#stx-null? _%tl3059030811%_)
                                   (_%__kont3880538806%_ _%hd3058930808%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3047830620%_)))))
                           (let () (declare (not safe)) (_%g3047830620%_)))
                       (if (equal? _%e3048531928%_ 'apply:)
                           (if (gx#stx-pair? _%tl3048431925%_)
                               (let ((_%e3059730714%_
                                      (gx#syntax-e _%tl3048431925%_)))
                                 (let ((_%tl3059930721%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3059730714%_)))
                                       (_%hd3059830718%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3059730714%_))))
                                   (if (gx#stx-pair? _%tl3059930721%_)
                                       (let ((_%e3060030724%_
                                              (gx#syntax-e _%tl3059930721%_)))
                                         (let ((_%tl3060230731%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3060030724%_)))
                                               (_%hd3060130728%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3060030724%_))))
                                           (if (gx#stx-null? _%tl3060230731%_)
                                               (_%__kont3880738808%_
                                                _%hd3060130728%_
                                                _%hd3059830718%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3047830620%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3047830620%_)))))
                               (let () (declare (not safe)) (_%g3047830620%_)))
                           (if (equal? _%e3048531928%_ 'var:)
                               (if (gx#stx-pair? _%tl3048431925%_)
                                   (let ((_%e3060830666%_
                                          (gx#syntax-e _%tl3048431925%_)))
                                     (let ((_%tl3061030673%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3060830666%_)))
                                           (_%hd3060930670%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3060830666%_))))
                                       (if (gx#stx-null? _%tl3061030673%_)
                                           (_%__kont3880938810%_
                                            _%hd3060930670%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3047830620%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3047830620%_)))
                               (if (equal? _%e3048531928%_ 'any:)
                                   (if (gx#stx-null? _%tl3048431925%_)
                                       (_%__kont3881138812%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3047830620%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3047830620%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3047830620%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3047830620%_))))))
                               _%g3043730448%_))))
                      (_%g3043532227%_ _%tgt30430%_))))
                 (_%generate-splice29166%_
                  (lambda (_%tgt29802%_
                           _%hd29804%_
                           _%rest29805%_
                           _%K29806%_
                           _%E29807%_)
                    (let* ((_%g2980929826%_
                            (lambda (_%g2981029822%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2981029822%_)))
                           (_%g2980830426%_
                            (lambda (_%g2981029830%_)
                              (if (gx#stx-pair/null? _%g2981029830%_)
                                  (let ((_g39933_
                                         (gx#syntax-split-splice
                                          _%g2981029830%_
                                          '0)))
                                    (begin
                                      (let ((_g39934_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39933_)
                                                   (##values-length _g39933_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39934_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39934_)))
                                      (let ((_%target2981229833%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39933_ 0)))
                                            (_%tl2981429836%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39933_ 1))))
                                        (if (gx#stx-null? _%tl2981429836%_)
                                            (letrec ((_%loop2981529839%_
                                                      (lambda (_%hd2981329843%_
                                                               _%var2981929846%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2981329843%_)
                                                            (let ((_%e2981629849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2981329843%_)))
                      (let ((_%lp-hd2981729853%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2981629849%_)))
                            (_%lp-tl2981829856%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2981629849%_))))
                        (_%loop2981529839%_
                         _%lp-tl2981829856%_
                         (cons _%lp-hd2981729853%_ _%var2981929846%_))))
                    (let ((_%var2982029859%_ (reverse _%var2981929846%_)))
                      ((lambda (_%L29863%_)
                         (let* ((_%g2987929896%_
                                 (lambda (_%g2988029892%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2988029892%_)))
                                (_%g2987830414%_
                                 (lambda (_%g2988029900%_)
                                   (if (gx#stx-pair/null? _%g2988029900%_)
                                       (let ((_g39935_
                                              (gx#syntax-split-splice
                                               _%g2988029900%_
                                               '0)))
                                         (begin
                                           (let ((_g39936_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39935_)
                                                        (##values-length
                                                         _g39935_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39936_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39936_)))
                                           (let ((_%target2988229903%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g39935_ 0)))
                                                 (_%tl2988429906%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g39935_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2988429906%_)
                                                 (letrec ((_%loop2988529909%_
                                                           (lambda (_%hd2988329913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2988929916%_)
                     (if (gx#stx-pair? _%hd2988329913%_)
                         (let ((_%e2988629919%_
                                (gx#syntax-e _%hd2988329913%_)))
                           (let ((_%lp-hd2988729923%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2988629919%_)))
                                 (_%lp-tl2988829926%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2988629919%_))))
                             (_%loop2988529909%_
                              _%lp-tl2988829926%_
                              (cons _%lp-hd2988729923%_ _%var-r2988929916%_))))
                         (let ((_%var-r2989029929%_
                                (reverse _%var-r2988929916%_)))
                           ((lambda (_%L29933%_)
                              (let* ((_%g2995029967%_
                                      (lambda (_%g2995129963%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2995129963%_)))
                                     (_%g2994930402%_
                                      (lambda (_%g2995129971%_)
                                        (if (gx#stx-pair/null? _%g2995129971%_)
                                            (let ((_g39937_
                                                   (gx#syntax-split-splice
                                                    _%g2995129971%_
                                                    '0)))
                                              (begin
                                                (let ((_g39938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39937_)
                                                             (##values-length
                                                              _g39937_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39938_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2995329974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39937_
                                                          0)))
                                                      (_%tl2995529977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39937_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2995529977%_)
                                                      (letrec ((_%loop2995629980%_
                                                                (lambda (_%hd2995429984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init2996029987%_)
                          (if (gx#stx-pair? _%hd2995429984%_)
                              (let ((_%e2995729990%_
                                     (gx#syntax-e _%hd2995429984%_)))
                                (let ((_%lp-hd2995829994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2995729990%_)))
                                      (_%lp-tl2995929997%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2995729990%_))))
                                  (_%loop2995629980%_
                                   _%lp-tl2995929997%_
                                   (cons _%lp-hd2995829994%_
                                         _%init2996029987%_))))
                              (let ((_%init2996130000%_
                                     (reverse _%init2996029987%_)))
                                ((lambda (_%L30004%_)
                                   (let* ((_%g3002130029%_
                                           (lambda (_%g3002230025%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3002230025%_)))
                                          (_%g3002030398%_
                                           (lambda (_%g3002230033%_)
                                             ((lambda (_%L30036%_)
                                                (let* ((_%g3004930057%_
                                                        (lambda (_%g3005030053%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3005030053%_)))
                                                       (_%g3004830394%_
                                                        (lambda (_%g3005030061%_)
                                                          ((lambda (_%L30064%_)
                                                             (let* ((_%g3007730085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3007830081%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3007830081%_)))
                            (_%g3007630390%_
                             (lambda (_%g3007830089%_)
                               ((lambda (_%L30092%_)
                                  (let* ((_%g3010530113%_
                                          (lambda (_%g3010630109%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3010630109%_)))
                                         (_%g3010430386%_
                                          (lambda (_%g3010630117%_)
                                            ((lambda (_%L30120%_)
                                               (let* ((_%g3013330141%_
                                                       (lambda (_%g3013430137%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3013430137%_)))
                                                      (_%g3013230382%_
                                                       (lambda (_%g3013430145%_)
                                                         ((lambda (_%L30148%_)
                                                            (let* ((_%g3016130169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3016230165%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3016230165%_)))
                           (_%g3016030378%_
                            (lambda (_%g3016230173%_)
                              ((lambda (_%L30176%_)
                                 (let* ((_%g3018930197%_
                                         (lambda (_%g3019030193%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3019030193%_)))
                                        (_%g3018830374%_
                                         (lambda (_%g3019030201%_)
                                           ((lambda (_%L30204%_)
                                              (let* ((_%g3021730225%_
                                                      (lambda (_%g3021830221%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3021830221%_)))
                                                     (_%g3021630359%_
                                                      (lambda (_%g3021830229%_)
                                                        ((lambda (_%L30232%_)
                                                           (let* ((_%g3024530253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3024630249%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3024630249%_)))
                          (_%g3024430347%_
                           (lambda (_%g3024630257%_)
                             ((lambda (_%L30260%_)
                                (let* ((_%g3027330281%_
                                        (lambda (_%g3027430277%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3027430277%_)))
                                       (_%g3027230343%_
                                        (lambda (_%g3027430285%_)
                                          ((lambda (_%L30288%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%L30064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%L30176%_
                                                     (foldr (lambda (_%g3030230313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3030330316%_)
                      (cons _%g3030230313%_ _%g3030330316%_))
                    '()
                    _%L29863%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L30204%_ '())))
                                   '()))
                       (cons (cons _%L30120%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%L30148%_
                                                           (cons _%L30176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3030430319%_ _%g3030530322%_)
                                  (cons _%g3030430319%_ _%g3030530322%_))
                                '()
                                _%L29933%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L30288%_ '())))
                                         '()))
                             (cons (cons _%L30092%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%L30176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3030630325%_ _%g3030730328%_)
                                  (cons _%g3030630325%_ _%g3030730328%_))
                                '()
                                _%L29933%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%L30176%_ '()))
                                     (cons (cons _%L30120%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%L30176%_
                     (foldr (lambda (_%g3030830331%_ _%g3030930334%_)
                              (cons _%g3030830331%_ _%g3030930334%_))
                            '()
                            _%L29933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L30260%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%L30092%_
                             (cons _%L30036%_
                                   (foldr (lambda (_%g3031030337%_
                                                   _%g3031130340%_)
                                            (cons _%g3031030337%_
                                                  _%g3031130340%_))
                                          '()
                                          _%L30004%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3027430285%_))))
                                  (_%g3027230343%_
                                   (_%generate129164%_
                                    _%L30148%_
                                    _%hd29804%_
                                    _%L30232%_
                                    _%L30260%_))))
                              _%g3024630257%_))))
                     (_%g3024430347%_
                      (cons _%L30064%_
                            (cons _%L30176%_
                                  (foldr (lambda (_%g3035030353%_
                                                  _%g3035130356%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3035030353%_
                                                             '()))
                                                 _%g3035130356%_))
                                         '()
                                         _%L29933%_))))))
                 _%g3021830229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3021630359%_
                                                 (cons _%L30092%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%L30176%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets _%L29933%_ _%L29863%_)
                       (foldr (lambda (_%g3036230366%_
                                       _%g3036330369%_
                                       _%g3036430371%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3036330369%_
                                                  (cons _%g3036230366%_ '())))
                                      _%g3036430371%_))
                              '()
                              _%L29933%_
                              _%L29863%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3019030201%_))))
                                   (_%g3018830374%_
                                    (_%generate129164%_
                                     _%L30176%_
                                     _%rest29805%_
                                     _%K29806%_
                                     _%E29807%_))))
                               _%g3016230173%_))))
                      (_%g3016030378%_ (gx#genident 'rest))))
                  _%g3013430145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3013230382%_
                                                  (gx#genident 'hd))))
                                             _%g3010630117%_))))
                                    (_%g3010430386%_
                                     (gx#genident 'splice-try))))
                                _%g3007830089%_))))
                       (_%g3007630390%_ (gx#genident 'splice-loop))))
                   _%g3005030061%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3004830394%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3002230033%_))))
                                     (_%g3002030398%_ _%tgt29802%_)))
                                 _%init2996130000%_))))))
                (_%loop2995629980%_ _%target2995329974%_ '()))
              (_%g2995029967%_ _%g2995129971%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2995029967%_
                                             _%g2995129971%_)))))
                                (_%g2994930402%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3040530408%_
                                                   _%g3040630411%_)
                                            (cons _%g3040530408%_
                                                  _%g3040630411%_))
                                          '()
                                          _%L29863%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2989029929%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2988529909%_
                                                    _%target2988229903%_
                                                    '()))
                                                 (_%g2987929896%_
                                                  _%g2988029900%_)))))
                                       (_%g2987929896%_ _%g2988029900%_)))))
                           (_%g2987830414%_
                            (gx#gentemps
                             (foldr (lambda (_%g3041730420%_ _%g3041830423%_)
                                      (cons _%g3041730420%_ _%g3041830423%_))
                                    '()
                                    _%L29863%_)))))
                       _%var2982029859%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2981529839%_
                                               _%target2981229833%_
                                               '()))
                                            (_%g2980929826%_
                                             _%g2981029830%_)))))
                                  (_%g2980929826%_ _%g2981029830%_)))))
                      (_%g2980830426%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29804%_)))))
                 (_%generate-simple-vector29167%_
                  (lambda (_%tgt29625%_
                           _%body29627%_
                           _%start29628%_
                           _%ref29629%_
                           _%K29630%_
                           _%E29631%_)
                    (let _%recur29633%_ ((_%rest29636%_ _%body29627%_)
                                         (_%off29638%_ _%start29628%_))
                      (let* ((_%__stx3913639137%_ _%rest29636%_)
                             (_%g2964129653%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3913639137%_))))
                        (let ((_%__kont3913939140%_
                               (lambda (_%L29681%_ _%L29683%_)
                                 (let* ((_%g2969829721%_
                                         (lambda (_%g2969929717%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2969929717%_)))
                                        (_%g2969729794%_
                                         (lambda (_%g2969929725%_)
                                           (if (gx#stx-pair? _%g2969929725%_)
                                               (let ((_%e2970429728%_
                                                      (gx#syntax-e
                                                       _%g2969929725%_)))
                                                 (let ((_%hd2970529732%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2970429728%_)))
                                                       (_%tl2970629735%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2970429728%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2970629735%_)
                                                       (let ((_%e2970729738%_
                                                              (gx#syntax-e
                                                               _%tl2970629735%_)))
                                                         (let ((_%hd2970829742%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2970729738%_)))
                       (_%tl2970929745%_
                        (let () (declare (not safe)) (##cdr _%e2970729738%_))))
                   (if (gx#stx-pair? _%tl2970929745%_)
                       (let ((_%e2971029748%_ (gx#syntax-e _%tl2970929745%_)))
                         (let ((_%hd2971129752%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2971029748%_)))
                               (_%tl2971229755%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2971029748%_))))
                           (if (gx#stx-pair? _%tl2971229755%_)
                               (let ((_%e2971329758%_
                                      (gx#syntax-e _%tl2971229755%_)))
                                 (let ((_%hd2971429762%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2971329758%_)))
                                       (_%tl2971529765%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2971329758%_))))
                                   (if (gx#stx-null? _%tl2971529765%_)
                                       ((lambda (_%L29768%_
                                                 _%L29770%_
                                                 _%L29771%_
                                                 _%L29772%_)
                                          (cons 'let
                                                (cons (cons (cons _%L29772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%L29768%_
                                      (cons _%L29771%_ (cons _%L29770%_ '())))
                                '()))
                    '())
              (cons (_%generate129164%_
                     _%L29772%_
                     _%L29683%_
                     (_%recur29633%_ _%L29681%_ (fx1+ _%off29638%_))
                     _%E29631%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd2971429762%_
                                        _%hd2971129752%_
                                        _%hd2970829742%_
                                        _%hd2970529732%_)
                                       (_%g2969829721%_ _%g2969929725%_))))
                               (_%g2969829721%_ _%g2969929725%_))))
                       (_%g2969829721%_ _%g2969929725%_))))
               (_%g2969829721%_ _%g2969929725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2969829721%_
                                                _%g2969929725%_)))))
                                   (_%g2969729794%_
                                    (list (gx#genident 'e)
                                          _%tgt29625%_
                                          _%off29638%_
                                          _%ref29629%_)))))
                              (_%__kont3914139142%_ (lambda () _%K29630%_)))
                          (if (gx#stx-pair? _%__stx3913639137%_)
                              (let ((_%e2964529671%_
                                     (gx#syntax-e _%__stx3913639137%_)))
                                (let ((_%tl2964729678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2964529671%_)))
                                      (_%hd2964629675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2964529671%_))))
                                  (_%__kont3913939140%_
                                   _%tl2964729678%_
                                   _%hd2964629675%_)))
                              (_%__kont3914139142%_)))))))
                 (_%generate-list-vector29168%_
                  (lambda (_%tgt29517%_
                           _%body29519%_
                           _%->list29520%_
                           _%K29521%_
                           _%E29522%_)
                    (let* ((_%g2952429532%_
                            (lambda (_%g2952529528%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2952529528%_)))
                           (_%g2952329621%_
                            (lambda (_%g2952529536%_)
                              ((lambda (_%L29539%_)
                                 (let* ((_%g2955129559%_
                                         (lambda (_%g2955229555%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2955229555%_)))
                                        (_%g2955029617%_
                                         (lambda (_%g2955229563%_)
                                           ((lambda (_%L29566%_)
                                              (let* ((_%g2957929587%_
                                                      (lambda (_%g2958029583%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2958029583%_)))
                                                     (_%g2957829609%_
                                                      (lambda (_%g2958029591%_)
                                                        ((lambda (_%L29594%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%L29539%_ (cons _%L29594%_ '()))
                                     '())
                               (cons (_%generate129164%_
                                      _%L29539%_
                                      _%body29519%_
                                      _%K29521%_
                                      _%E29522%_)
                                     '()))))
                 _%g2958029591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2957829609%_
                                                 (let ((_%$e29613%_
                                                        _%->list29520%_))
                                                   (if (eq? 'values->list
                                                            _%$e29613%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%L29566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29613%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%L29566%_ '()))
                   (if (eq? 'struct->list _%$e29613%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%L29566%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29157%_
                        _%->list29520%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2955229563%_))))
                                   (_%g2955029617%_ _%tgt29517%_)))
                               _%g2952529536%_))))
                      (_%g2952329621%_ (gx#genident 'e)))))
                 (_%generate-struct29169%_
                  (lambda (_%info29388%_
                           _%tgt29390%_
                           _%body29391%_
                           _%K29392%_
                           _%E29393%_)
                    (let* ((_%__stx3915239153%_ _%body29391%_)
                           (_%g2939629419%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3915239153%_))))
                      (let ((_%__kont3915539156%_
                             (lambda (_%L29496%_)
                               (let ((_%fields29510%_
                                      (_%struct-field-accessors29171%_
                                       _%info29388%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39906
                                                          _%info29388%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39906
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39906
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39906
                                                          'predicate)))
                                                   (cons _%tgt29390%_ '()))
                                             (cons (_%generate-simple-struct-body29170%_
                                                    _%info29388%_
                                                    _%tgt29390%_
                                                    _%L29496%_
                                                    _%K29392%_
                                                    _%E29393%_)
                                                   (cons _%E29393%_ '())))))))
                            (_%__kont3915739158%_
                             (lambda (_%L29450%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39907
                                                        _%info29388%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39907
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39907
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39907
                                                        'predicate)))
                                                 (cons _%tgt29390%_ '()))
                                           (cons (_%generate-list-vector29168%_
                                                  _%tgt29390%_
                                                  _%L29450%_
                                                  'struct->list
                                                  _%K29392%_
                                                  _%E29393%_)
                                                 (cons _%E29393%_ '())))))))
                        (if (gx#stx-pair? _%__stx3915239153%_)
                            (let ((_%e2939929472%_
                                   (gx#syntax-e _%__stx3915239153%_)))
                              (let ((_%tl2940129479%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2939929472%_)))
                                    (_%hd2940029476%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2939929472%_))))
                                (if (gx#stx-datum? _%hd2940029476%_)
                                    (let ((_%e2940229482%_
                                           (gx#stx-e _%hd2940029476%_)))
                                      (if (equal? _%e2940229482%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2940129479%_)
                                              (let ((_%e2940329486%_
                                                     (gx#syntax-e
                                                      _%tl2940129479%_)))
                                                (let ((_%tl2940529493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2940329486%_)))
                                                      (_%hd2940429490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2940329486%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2940529493%_)
                                                      (_%__kont3915539156%_
                                                       _%hd2940429490%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2939629419%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2939629419%_)))
                                          (if (equal? _%e2940229482%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2940129479%_)
                                                  (let ((_%e2941129440%_
                                                         (gx#syntax-e
                                                          _%tl2940129479%_)))
                                                    (let ((_%tl2941329447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2941129440%_)))
                                                          (_%hd2941229444%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2941129440%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2941329447%_)
                                                          (_%__kont3915739158%_
                                                           _%hd2941229444%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2939629419%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2939629419%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2939629419%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2939629419%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2939629419%_)))))))
                 (_%generate-simple-struct-body29170%_
                  (lambda (_%info29308%_
                           _%tgt29310%_
                           _%body29311%_
                           _%K29312%_
                           _%E29313%_)
                    (let _%recur29315%_ ((_%rest29318%_ _%body29311%_)
                                         (_%fields29320%_
                                          (_%struct-field-accessors29171%_
                                           _%info29308%_)))
                      (let* ((_%__stx3920239203%_ _%rest29318%_)
                             (_%g2932329335%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3920239203%_))))
                        (let ((_%__kont3920539206%_
                               (lambda (_%L29363%_ _%L29365%_)
                                 (if (null? _%fields29320%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29157%_
                                      _%info29308%_
                                      (let ((__obj39908 _%info29308%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39908
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39908
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39908
                                             'name))))
                                     (let ((_%$tgt29380%_ (gx#genident 'e))
                                           (_%getf29382%_
                                            (car _%fields29320%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29380%_
                                                               (cons (cons _%getf29382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29310%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129164%_
                                                          _%$tgt29380%_
                                                          _%L29365%_
                                                          (_%recur29315%_
                                                           _%L29363%_
                                                           (cdr _%fields29320%_))
                                                          _%E29313%_)
                                                         '())))))))
                              (_%__kont3920739208%_ (lambda () _%K29312%_)))
                          (if (gx#stx-pair? _%__stx3920239203%_)
                              (let ((_%e2932729353%_
                                     (gx#syntax-e _%__stx3920239203%_)))
                                (let ((_%tl2932929360%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2932729353%_)))
                                      (_%hd2932829357%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2932729353%_))))
                                  (_%__kont3920539206%_
                                   _%tl2932929360%_
                                   _%hd2932829357%_)))
                              (_%__kont3920739208%_)))))))
                 (_%struct-field-accessors29171%_
                  (lambda (_%info29289%_)
                    (let _%recur29292%_ ((_%next29295%_
                                          (cons _%info29289%_ '())))
                      (if (null? _%next29295%_)
                          '()
                          (let ((_%ti29298%_ (car _%next29295%_)))
                            (let ((__tmp39940
                                   (_%recur29292%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39909 _%ti29298%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39909
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39909
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39909
                                                'super))))))
                                  (__tmp39939
                                   (map (lambda (_%slot29301%_)
                                          (let ((_%$e29304%_
                                                 (agetq _%slot29301%_
                                                        (let ((__obj39910
                                                               _%ti29298%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39910
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39910 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39910
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29304%_
                                                _%$e29304%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29157%_
                                                 _%info29289%_
                                                 _%slot29301%_))))
                                        (let ((__obj39911 _%ti29298%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39911
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39911
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39911
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39940 __tmp39939)))))))
                 (_%generate-class29172%_
                  (lambda (_%info29282%_
                           _%tgt29284%_
                           _%body29285%_
                           _%K29286%_
                           _%E29287%_)
                    (cons 'if
                          (cons (cons (let ((__obj39912 _%info29282%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39912
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39912
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39912
                                             'predicate)))
                                      (cons _%tgt29284%_ '()))
                                (cons (_%generate-class-body29173%_
                                       _%info29282%_
                                       _%tgt29284%_
                                       _%body29285%_
                                       _%K29286%_
                                       _%E29287%_)
                                      (cons _%E29287%_ '()))))))
                 (_%generate-class-body29173%_
                  (lambda (_%info29175%_
                           _%tgt29177%_
                           _%body29178%_
                           _%K29179%_
                           _%E29180%_)
                    (let _%recur29182%_ ((_%rest29185%_ _%body29178%_))
                      (let* ((_%__stx3921839219%_ _%rest29185%_)
                             (_%g2918929205%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3921839219%_))))
                        (let ((_%__kont3922139222%_
                               (lambda (_%L29243%_ _%L29245%_ _%L29246%_)
                                 (let ((_%$e29266%_
                                        (agetq (let ((__tmp39941
                                                      (keyword->string
                                                       (gx#stx-e _%L29246%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp39941))
                                               (let ((__obj39913
                                                      _%info29175%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39913
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39913
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39913
                                                      'unchecked-accessors))))))
                                   (if _%$e29266%_
                                       ((lambda (_%getf29270%_)
                                          (let ((_%$tgt29273%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29270%_ (cons _%tgt29177%_ '()))
                                  '()))
                      '())
                (cons (_%generate129164%_
                       _%$tgt29273%_
                       _%L29245%_
                       (_%recur29182%_ _%L29243%_)
                       _%E29180%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29266%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29157%_
                                        _%info29175%_
                                        _%L29246%_)))))
                              (_%__kont3922339224%_ (lambda () _%K29179%_)))
                          (if (gx#stx-pair? _%__stx3921839219%_)
                              (let ((_%e2919429223%_
                                     (gx#syntax-e _%__stx3921839219%_)))
                                (let ((_%tl2919629230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2919429223%_)))
                                      (_%hd2919529227%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2919429223%_))))
                                  (if (gx#stx-pair? _%tl2919629230%_)
                                      (let ((_%e2919729233%_
                                             (gx#syntax-e _%tl2919629230%_)))
                                        (let ((_%tl2919929240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2919729233%_)))
                                              (_%hd2919829237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2919729233%_))))
                                          (_%__kont3922139222%_
                                           _%tl2919929240%_
                                           _%hd2919829237%_
                                           _%hd2919529227%_)))
                                      (_%__kont3922339224%_))))
                              (_%__kont3922339224%_))))))))
          (_%generate129164%_
           _%tgt29159%_
           _%ptree29160%_
           _%K29161%_
           _%E29162%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx27970%_ _%tgt-lst27972%_ _%clauses27973%_)
        (letrec ((_%parse-body27975%_
                  (lambda (_%hd-len28979%_)
                    (let _%lp28982%_ ((_%rest28985%_ _%clauses27973%_)
                                      (_%r28987%_ '()))
                      (let* ((_%__stx3926839269%_ _%rest28985%_)
                             (_%g2899029002%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3926839269%_))))
                        (let ((_%__kont3927139272%_
                               (lambda (_%L29030%_ _%L29032%_)
                                 (let* ((_%__stx3924039241%_ _%L29032%_)
                                        (_%g2904929065%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3924039241%_))))
                                   (let ((_%__kont3924339244%_
                                          (lambda (_%L29134%_)
                                            (if (gx#stx-null? _%L29030%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L29134%_)
                                 (let ((_%$e29145%_
                                        (gx#stx-source _%L29032%_)))
                                   (if _%$e29145%_
                                       _%$e29145%_
                                       (gx#stx-source _%stx27970%_))))
                                '())))
              _%r28987%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx27970%_
                                                 _%L29032%_))))
                                         (_%__kont3924539246%_
                                          (lambda (_%L29093%_ _%L29095%_)
                                            (_%lp28982%_
                                             _%L29030%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2910729109%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2910729109%_
                           _%stx27970%_))
                        _%L29095%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _%L29093%_)
                              (let ((_%$e29113%_ (gx#stx-source _%L29032%_)))
                                (if _%$e29113%_
                                    _%$e29113%_
                                    (gx#stx-source _%stx27970%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r28987%_))))
                                         (_%__kont3924739248%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx27970%_
                                             _%L29032%_))))
                                     (let* ((_%__match3926539266%_
                                             (lambda (_%e2905729083%_
                                                      _%hd2905829087%_
                                                      _%tl2905929090%_)
                                               (let ((_%L29093%_
                                                      _%tl2905929090%_)
                                                     (_%L29095%_
                                                      _%hd2905829087%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29095%_)
                                                          (fx= (gx#stx-length
                                                                _%L29095%_)
                                                               _%hd-len28979%_)
                                                          (gx#stx-list?
                                                           _%L29093%_)
                                                          (not (gx#stx-null?
                                                                _%L29093%_)))
                                                     (_%__kont3924539246%_
                                                      _%L29093%_
                                                      _%L29095%_)
                                                     (_%__kont3924739248%_)))))
                                            (_%__match3925939260%_
                                             (lambda (_%e2905229124%_
                                                      _%hd2905329128%_
                                                      _%tl2905429131%_)
                                               (let ((_%L29134%_
                                                      _%tl2905429131%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29134%_)
                                                          (not (gx#stx-null?
                                                                _%L29134%_)))
                                                     (_%__kont3924339244%_
                                                      _%L29134%_)
                                                     (_%__match3926539266%_
                                                      _%e2905229124%_
                                                      _%hd2905329128%_
                                                      _%tl2905429131%_))))))
                                       (if (gx#stx-pair? _%__stx3924039241%_)
                                           (let ((_%e2905229124%_
                                                  (gx#syntax-e
                                                   _%__stx3924039241%_)))
                                             (let ((_%tl2905429131%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2905229124%_)))
                                                   (_%hd2905329128%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2905229124%_))))
                                               (if (gx#identifier?
                                                    _%hd2905329128%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39942_|
                                                        _%hd2905329128%_)
                                                       (_%__match3925939260%_
                                                        _%e2905229124%_
                                                        _%hd2905329128%_
                                                        _%tl2905429131%_)
                                                       (_%__match3926539266%_
                                                        _%e2905229124%_
                                                        _%hd2905329128%_
                                                        _%tl2905429131%_))
                                                   (_%__match3926539266%_
                                                    _%e2905229124%_
                                                    _%hd2905329128%_
                                                    _%tl2905429131%_))))
                                           (_%__kont3924739248%_)))))))
                              (_%__kont3927339274%_ (lambda () _%r28987%_)))
                          (if (gx#stx-pair? _%__stx3926839269%_)
                              (let ((_%e2899429020%_
                                     (gx#syntax-e _%__stx3926839269%_)))
                                (let ((_%tl2899629027%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2899429020%_)))
                                      (_%hd2899529024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2899429020%_))))
                                  (_%__kont3927139272%_
                                   _%tl2899629027%_
                                   _%hd2899529024%_)))
                              (_%__kont3927339274%_)))))))
                 (_%generate-body27977%_
                  (lambda (_%body28681%_)
                    (let* ((_%g2868428692%_
                            (lambda (_%g2868528688%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2868528688%_)))
                           (_%g2868328975%_
                            (lambda (_%g2868528696%_)
                              ((lambda (_%L28699%_)
                                 (let* ((_%g2871128728%_
                                         (lambda (_%g2871228724%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2871228724%_)))
                                        (_%g2871028971%_
                                         (lambda (_%g2871228732%_)
                                           (if (gx#stx-pair/null?
                                                _%g2871228732%_)
                                               (let ((_g39943_
                                                      (gx#syntax-split-splice
                                                       _%g2871228732%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39944_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39943_)
                        (##values-length _g39943_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39944_ 2)))
                 (error "Context expects 2 values" _g39944_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2871428735%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39943_
                                                             0)))
                                                         (_%tl2871628738%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39943_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2871628738%_)
                                                         (letrec ((_%loop2871728741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2871528745%_ _%target2872128748%_)
                             (if (gx#stx-pair? _%hd2871528745%_)
                                 (let ((_%e2871828751%_
                                        (gx#syntax-e _%hd2871528745%_)))
                                   (let ((_%lp-hd2871928755%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2871828751%_)))
                                         (_%lp-tl2872028758%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2871828751%_))))
                                     (_%loop2871728741%_
                                      _%lp-tl2872028758%_
                                      (cons _%lp-hd2871928755%_
                                            _%target2872128748%_))))
                                 (let ((_%target2872228761%_
                                        (reverse _%target2872128748%_)))
                                   ((lambda (_%L28765%_)
                                      (let* ((_%g2878228799%_
                                              (lambda (_%g2878328795%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2878328795%_)))
                                             (_%g2878128967%_
                                              (lambda (_%g2878328803%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2878328803%_)
                                                    (let ((_g39945_
                                                           (gx#syntax-split-splice
                                                            _%g2878328803%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39946_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39945_)
                             (##values-length _g39945_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39946_ 2)))
                      (error "Context expects 2 values" _g39946_)))
                (let ((_%target2878528806%_
                       (let () (declare (not safe)) (##values-ref _g39945_ 0)))
                      (_%tl2878728809%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g39945_ 1))))
                  (if (gx#stx-null? _%tl2878728809%_)
                      (letrec ((_%loop2878828812%_
                                (lambda (_%hd2878628816%_
                                         _%fail-diagnostic2879228819%_)
                                  (if (gx#stx-pair? _%hd2878628816%_)
                                      (let ((_%e2878928822%_
                                             (gx#syntax-e _%hd2878628816%_)))
                                        (let ((_%lp-hd2879028826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2878928822%_)))
                                              (_%lp-tl2879128829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2878928822%_))))
                                          (_%loop2878828812%_
                                           _%lp-tl2879128829%_
                                           (cons _%lp-hd2879028826%_
                                                 _%fail-diagnostic2879228819%_))))
                                      (let ((_%fail-diagnostic2879328832%_
                                             (reverse _%fail-diagnostic2879228819%_)))
                                        ((lambda (_%L28836%_)
                                           (let* ((_%g2885328861%_
                                                   (lambda (_%g2885428857%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2885428857%_)))
                                                  (_%g2885228947%_
                                                   (lambda (_%g2885428865%_)
                                                     ((lambda (_%L28868%_)
                                                        (let* ((_%g2888128889%_
                                                                (lambda (_%g2888228885%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2888228885%_)))
                       (_%g2888028943%_
                        (lambda (_%g2888228893%_)
                          ((lambda (_%L28896%_)
                             (let* ((_%g2890928917%_
                                     (lambda (_%g2891028913%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2891028913%_)))
                                    (_%g2890828939%_
                                     (lambda (_%g2891028921%_)
                                       ((lambda (_%L28924%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%L28924%_ '()))))
                                        _%g2891028921%_))))
                               (_%g2890828939%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%L28699%_
                                                         (cons _%L28868%_ '()))
                                                   '())
                                             (cons _%L28896%_ '())))
                                 (gx#stx-source _%stx27970%_)))))
                           _%g2888228893%_))))
                  (_%g2888028943%_
                   (_%generate-clauses27978%_
                    _%body28681%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%L28699%_ '()) '())))))))
              _%g2885428865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2885228947%_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'error)
                               (cons '"No clause matching"
                                     (foldr (lambda (_%g2895028955%_
                                                     _%g2895128958%_)
                                              (cons _%g2895028955%_
                                                    _%g2895128958%_))
                                            (foldr (lambda (_%g2895228961%_
                                                            _%g2895328964%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2895228961%_ '()))
                   _%g2895328964%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%L28836%_)
                                            _%L28765%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27970%_)))))
                                         _%fail-diagnostic2879328832%_))))))
                        (_%loop2878828812%_ _%target2878528806%_ '()))
                      (_%g2878228799%_ _%g2878328803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2878228799%_
                                                     _%g2878328803%_)))))
                                        (_%g2878128967%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses27973%_))))
                                    _%target2872228761%_))))))
                   (_%loop2871728741%_ _%target2871428735%_ '()))
                 (_%g2871128728%_ _%g2871228732%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2871128728%_
                                                _%g2871228732%_)))))
                                   (_%g2871028971%_ _%tgt-lst27972%_)))
                               _%g2868528696%_))))
                      (_%g2868328975%_ (gx#genident 'E)))))
                 (_%generate-clauses27978%_
                  (lambda (_%rest28333%_ _%E28335%_)
                    (let* ((_%__stx3928439285%_ _%rest28333%_)
                           (_%g2833928355%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3928439285%_))))
                      (let ((_%__kont3928739288%_
                             (lambda (_%L28589%_)
                               (let* ((_%g2860028618%_
                                       (lambda (_%g2860128614%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2860128614%_)))
                                      (_%g2859928673%_
                                       (lambda (_%g2860128622%_)
                                         (if (gx#stx-pair? _%g2860128622%_)
                                             (let ((_%e2860428625%_
                                                    (gx#syntax-e
                                                     _%g2860128622%_)))
                                               (let ((_%hd2860528629%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2860428625%_)))
                                                     (_%tl2860628632%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2860428625%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2860628632%_)
                                                     (let ((_%e2860728635%_
                                                            (gx#syntax-e
                                                             _%tl2860628632%_)))
                                                       (let ((_%hd2860828639%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2860728635%_)))
                     (_%tl2860928642%_
                      (let () (declare (not safe)) (##cdr _%e2860728635%_))))
                 (if (gx#stx-pair? _%tl2860928642%_)
                     (let ((_%e2861028645%_ (gx#syntax-e _%tl2860928642%_)))
                       (let ((_%hd2861128649%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2861028645%_)))
                             (_%tl2861228652%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2861028645%_))))
                         (if (gx#stx-null? _%tl2861228652%_)
                             ((lambda (_%L28655%_ _%L28657%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28657%_)
                                                      (_%generate127979%_
                                                       _%L28657%_
                                                       _%L28655%_
                                                       _%E28335%_)
                                                      _%L28655%_)
                                                  '()))))
                              _%hd2861128649%_
                              _%hd2860828639%_)
                             (_%g2860028618%_ _%g2860128622%_))))
                     (_%g2860028618%_ _%g2860128622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2860028618%_
                                                      _%g2860128622%_))))
                                             (_%g2860028618%_
                                              _%g2860128622%_)))))
                                 (_%g2859928673%_ _%L28589%_))))
                            (_%__kont3928939290%_
                             (lambda (_%L28383%_ _%L28385%_)
                               (let* ((_%g2839828417%_
                                       (lambda (_%g2839928413%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2839928413%_)))
                                      (_%g2839728568%_
                                       (lambda (_%g2839928421%_)
                                         (if (gx#stx-pair? _%g2839928421%_)
                                             (let ((_%e2840328424%_
                                                    (gx#syntax-e
                                                     _%g2839928421%_)))
                                               (let ((_%hd2840428428%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2840328424%_)))
                                                     (_%tl2840528431%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2840328424%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2840528431%_)
                                                     (let ((_%e2840628434%_
                                                            (gx#syntax-e
                                                             _%tl2840528431%_)))
                                                       (let ((_%hd2840728438%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2840628434%_)))
                     (_%tl2840828441%_
                      (let () (declare (not safe)) (##cdr _%e2840628434%_))))
                 (if (gx#stx-pair? _%tl2840828441%_)
                     (let ((_%e2840928444%_ (gx#syntax-e _%tl2840828441%_)))
                       (let ((_%hd2841028448%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2840928444%_)))
                             (_%tl2841128451%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2840928444%_))))
                         (if (gx#stx-null? _%tl2841128451%_)
                             ((lambda (_%L28454%_ _%L28456%_ _%L28457%_)
                                (if (gx#stx-e _%L28456%_)
                                    (let* ((_%g2847428489%_
                                            (lambda (_%g2847528485%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2847528485%_)))
                                           (_%g2847328534%_
                                            (lambda (_%g2847528493%_)
                                              (if (gx#stx-pair?
                                                   _%g2847528493%_)
                                                  (let ((_%e2847828496%_
                                                         (gx#syntax-e
                                                          _%g2847528493%_)))
                                                    (let ((_%hd2847928500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2847828496%_)))
                                                          (_%tl2848028503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2847828496%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2848028503%_)
                                                          (let ((_%e2848128506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2848028503%_)))
                    (let ((_%hd2848228510%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2848128506%_)))
                          (_%tl2848328513%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2848128506%_))))
                      (if (gx#stx-null? _%tl2848328513%_)
                          ((lambda (_%L28516%_ _%L28518%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%L28457%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28518%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L28516%_ '()))))
                           _%hd2848228510%_
                           _%hd2847928500%_)
                          (_%g2847428489%_ _%g2847528493%_))))
                  (_%g2847428489%_ _%g2847528493%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2847428489%_
                                                   _%g2847528493%_)))))
                                      (_%g2847328534%_
                                       (list (_%generate127979%_
                                              _%L28456%_
                                              _%L28454%_
                                              _%E28335%_)
                                             (_%generate-clauses27978%_
                                              _%L28383%_
                                              (cons _%L28457%_ '())))))
                                    (let* ((_%g2853828546%_
                                            (lambda (_%g2853928542%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2853928542%_)))
                                           (_%g2853728564%_
                                            (lambda (_%g2853928550%_)
                                              ((lambda (_%L28553%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L28457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'begin-annotation)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '@match-else)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L28454%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%L28553%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2853928550%_))))
                                      (_%g2853728564%_
                                       (_%generate-clauses27978%_
                                        _%L28383%_
                                        (cons _%L28457%_ '()))))))
                              _%hd2841028448%_
                              _%hd2840728438%_
                              _%hd2840428428%_)
                             (_%g2839828417%_ _%g2839928421%_))))
                     (_%g2839828417%_ _%g2839928421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2839828417%_
                                                      _%g2839928421%_))))
                                             (_%g2839828417%_
                                              _%g2839928421%_)))))
                                 (_%g2839728568%_ _%L28385%_))))
                            (_%__kont3929139292%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28335%_ '()))))))
                        (if (gx#stx-pair? _%__stx3928439285%_)
                            (let ((_%e2834228579%_
                                   (gx#syntax-e _%__stx3928439285%_)))
                              (let ((_%tl2834428586%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2834228579%_)))
                                    (_%hd2834328583%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2834228579%_))))
                                (if (gx#stx-null? _%tl2834428586%_)
                                    (_%__kont3928739288%_ _%hd2834328583%_)
                                    (_%__kont3928939290%_
                                     _%tl2834428586%_
                                     _%hd2834328583%_))))
                            (_%__kont3929139292%_))))))
                 (_%generate127979%_
                  (lambda (_%clause27981%_ _%body27983%_ _%E27984%_)
                    (let* ((_%g2798628010%_
                            (lambda (_%g2798728006%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2798728006%_)))
                           (_%g2798528329%_
                            (lambda (_%g2798728014%_)
                              (if (gx#stx-pair? _%g2798728014%_)
                                  (let ((_%e2799028017%_
                                         (gx#syntax-e _%g2798728014%_)))
                                    (let ((_%hd2799128021%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2799028017%_)))
                                          (_%tl2799228024%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2799028017%_))))
                                      (if (gx#stx-pair? _%tl2799228024%_)
                                          (let ((_%e2799328027%_
                                                 (gx#syntax-e
                                                  _%tl2799228024%_)))
                                            (let ((_%hd2799428031%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2799328027%_)))
                                                  (_%tl2799528034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2799328027%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2799428031%_)
                                                  (let ((_g39947_
                                                         (gx#syntax-split-splice
                                                          _%hd2799428031%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39948_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39947_)
                           (##values-length _g39947_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39948_ 2)))
                    (error "Context expects 2 values" _g39948_)))
              (let ((_%target2799628037%_
                     (let () (declare (not safe)) (##values-ref _g39947_ 0)))
                    (_%tl2799828040%_
                     (let () (declare (not safe)) (##values-ref _g39947_ 1))))
                (if (gx#stx-null? _%tl2799828040%_)
                    (letrec ((_%loop2799928043%_
                              (lambda (_%hd2799728047%_ _%var2800328050%_)
                                (if (gx#stx-pair? _%hd2799728047%_)
                                    (let ((_%e2800028053%_
                                           (gx#syntax-e _%hd2799728047%_)))
                                      (let ((_%lp-hd2800128057%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2800028053%_)))
                                            (_%lp-tl2800228060%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2800028053%_))))
                                        (_%loop2799928043%_
                                         _%lp-tl2800228060%_
                                         (cons _%lp-hd2800128057%_
                                               _%var2800328050%_))))
                                    (let ((_%var2800428063%_
                                           (reverse _%var2800328050%_)))
                                      (if (gx#stx-null? _%tl2799528034%_)
                                          ((lambda (_%L28067%_ _%L28069%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2809028093%_
                                                                _%g2809128096%_)
                                                         (cons _%g2809028093%_
                                                               _%g2809128096%_))
                                                       '()
                                                       _%L28067%_)
                                                _%stx27970%_)
                                               (let* ((_%g2809928107%_
                                                       (lambda (_%g2810028103%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2810028103%_)))
                                                      (_%g2809828201%_
                                                       (lambda (_%g2810028111%_)
                                                         ((lambda (_%L28114%_)
                                                            (let* ((_%g2812728135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2812828131%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2812828131%_)))
                           (_%g2812628197%_
                            (lambda (_%g2812828139%_)
                              ((lambda (_%L28142%_)
                                 (let* ((_%g2815528163%_
                                         (lambda (_%g2815628159%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2815628159%_)))
                                        (_%g2815428185%_
                                         (lambda (_%g2815628167%_)
                                           ((lambda (_%L28170%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L28069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L28170%_ '()))
                   (cons _%L28114%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27970%_)))
                                            _%g2815628167%_))))
                                   (_%g2815428185%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2818828191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2818928194%_)
                  (cons _%g2818828191%_ _%g2818928194%_))
                '()
                _%L28067%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L28142%_ '())))
                                     (gx#stx-source _%stx27970%_)))))
                               _%g2812828139%_))))
                      (_%g2812628197%_ _%body27983%_)))
                  _%g2810028111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2809828201%_
                                                  (let _%recur28205%_ ((_%rest28208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause27981%_)
                               (_%rest-targets28210%_ _%tgt-lst27972%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3931039311%_
                                                            _%rest28208%_)
                                                           (_%g2821328225%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3931039311%_))))
                                                      (let ((_%__kont3931339314%_
                                                             (lambda (_%L28261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L28263%_)
                       (let* ((_%g2827828290%_
                               (lambda (_%g2827928286%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2827928286%_)))
                              (_%g2827728321%_
                               (lambda (_%g2827928294%_)
                                 (if (gx#stx-pair? _%g2827928294%_)
                                     (let ((_%e2828228297%_
                                            (gx#syntax-e _%g2827928294%_)))
                                       (let ((_%hd2828328301%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2828228297%_)))
                                             (_%tl2828428304%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2828228297%_))))
                                         ((lambda (_%L28307%_ _%L28309%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx27970%_
                                             _%L28309%_
                                             _%L28263%_
                                             (_%recur28205%_
                                              _%L28261%_
                                              _%L28307%_)
                                             _%E27984%_))
                                          _%tl2828428304%_
                                          _%hd2828328301%_)))
                                     (_%g2827828290%_ _%g2827928294%_)))))
                         (_%g2827728321%_ _%rest-targets28210%_))))
                    (_%__kont3931539316%_
                     (lambda ()
                       (cons _%L28069%_
                             (foldr (lambda (_%g2823528238%_ _%g2823628241%_)
                                      (cons _%g2823528238%_ _%g2823628241%_))
                                    '()
                                    _%L28067%_)))))
                (if (gx#stx-pair? _%__stx3931039311%_)
                    (let ((_%e2821728251%_ (gx#syntax-e _%__stx3931039311%_)))
                      (let ((_%tl2821928258%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2821728251%_)))
                            (_%hd2821828255%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2821728251%_))))
                        (_%__kont3931339314%_
                         _%tl2821928258%_
                         _%hd2821828255%_)))
                    (_%__kont3931539316%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2800428063%_
                                           _%hd2799128021%_)
                                          (_%g2798628010%_
                                           _%g2798728014%_)))))))
                      (_%loop2799928043%_ _%target2799628037%_ '()))
                    (_%g2798628010%_ _%g2798728014%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2798628010%_
                                                   _%g2798728014%_))))
                                          (_%g2798628010%_ _%g2798728014%_))))
                                  (_%g2798628010%_ _%g2798728014%_)))))
                      (_%g2798528329%_
                       (list (gx#genident 'K)
                             (let ((__tmp39949
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause27981%_)))
                               (declare (not safe))
                               (##apply append __tmp39949))))))))
          (_%generate-body27977%_
           (_%parse-body27975%_ (gx#stx-length _%tgt-lst27972%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27872%_ _%tgt27874%_ _%clauses27875%_)
        (letrec ((_%reclause27877%_
                  (lambda (_%clause27880%_)
                    (let* ((_%__stx3932639327%_ _%clause27880%_)
                           (_%g2788527900%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3932639327%_))))
                      (let ((_%__kont3932939330%_ (lambda () _%clause27880%_))
                            (_%__kont3933139332%_
                             (lambda (_%L27928%_ _%L27930%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L27930%_ '()) _%L27928%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3933339334%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27872%_
                                _%clause27880%_))))
                        (if (gx#stx-pair? _%__stx3932639327%_)
                            (let ((_%e2788727952%_
                                   (gx#syntax-e _%__stx3932639327%_)))
                              (let ((_%tl2788927959%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2788727952%_)))
                                    (_%hd2788827956%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2788727952%_))))
                                (if (gx#identifier? _%hd2788827956%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39950_|
                                         _%hd2788827956%_)
                                        (_%__kont3932939330%_)
                                        (_%__kont3933139332%_
                                         _%tl2788927959%_
                                         _%hd2788827956%_))
                                    (_%__kont3933139332%_
                                     _%tl2788927959%_
                                     _%hd2788827956%_))))
                            (_%__kont3933339334%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27872%_
           (cons _%tgt27874%_ '())
           (gx#stx-map _%reclause27877%_ _%clauses27875%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35227%_)
        (let* ((_%__stx3935439355%_ _%stx35227%_)
               (_%g3523235261%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3935439355%_))))
          (let ((_%__kont3935739358%_
                 (lambda (_%L35501%_)
                   (let* ((_%g3551435522%_
                           (lambda (_%g3551535518%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3551535518%_)))
                          (_%g3551335575%_
                           (lambda (_%g3551535526%_)
                             ((lambda (_%L35529%_)
                                (let* ((_%g3554135549%_
                                        (lambda (_%g3554235545%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3554235545%_)))
                                       (_%g3554035571%_
                                        (lambda (_%g3554235553%_)
                                          ((lambda (_%L35556%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L35529%_ '())
                                                         (cons _%L35556%_
                                                               '()))))
                                           _%g3554235553%_))))
                                  (_%g3554035571%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35529%_ _%L35501%_))
                                    (gx#stx-source _%stx35227%_)))))
                              _%g3551535526%_))))
                     (_%g3551335575%_ (gx#genident 'e)))))
                (_%__kont3935939360%_
                 (lambda (_%L35396%_)
                   (let* ((_%g3540935417%_
                           (lambda (_%g3541035413%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3541035413%_)))
                          (_%g3540835470%_
                           (lambda (_%g3541035421%_)
                             ((lambda (_%L35424%_)
                                (let* ((_%g3543635444%_
                                        (lambda (_%g3543735440%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3543735440%_)))
                                       (_%g3543535466%_
                                        (lambda (_%g3543735448%_)
                                          ((lambda (_%L35451%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%L35424%_
                                                         (cons _%L35451%_
                                                               '()))))
                                           _%g3543735448%_))))
                                  (_%g3543535466%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35424%_ _%L35396%_))
                                    (gx#stx-source _%stx35227%_)))))
                              _%g3541035421%_))))
                     (_%g3540835470%_ (gx#genident 'args)))))
                (_%__kont3936139362%_
                 (lambda (_%L35288%_ _%L35290%_)
                   (let* ((_%g3530435312%_
                           (lambda (_%g3530535308%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3530535308%_)))
                          (_%g3530335365%_
                           (lambda (_%g3530535316%_)
                             ((lambda (_%L35319%_)
                                (let* ((_%g3533135339%_
                                        (lambda (_%g3533235335%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3533235335%_)))
                                       (_%g3533035361%_
                                        (lambda (_%g3533235343%_)
                                          ((lambda (_%L35346%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L35319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L35290%_ '()))
                       '())
                 (cons _%L35346%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3533235343%_))))
                                  (_%g3533035361%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35227%_
                                    _%L35319%_
                                    _%L35288%_))))
                              _%g3530535316%_))))
                     (_%g3530335365%_ (gx#genident _%L35290%_))))))
            (let* ((_%__match3940739408%_
                    (lambda (_%e3525035268%_
                             _%hd3525135272%_
                             _%tl3525235275%_
                             _%e3525335278%_
                             _%hd3525435282%_
                             _%tl3525535285%_)
                      (let ((_%L35288%_ _%tl3525535285%_)
                            (_%L35290%_ _%hd3525435282%_))
                        (if (gx#stx-list? _%L35288%_)
                            (_%__kont3936139362%_ _%L35288%_ _%L35290%_)
                            (let () (declare (not safe)) (_%g3523235261%_))))))
                   (_%__match3939539396%_
                    (lambda (_%e3524235376%_
                             _%hd3524335380%_
                             _%tl3524435383%_
                             _%e3524535386%_
                             _%hd3524635390%_
                             _%tl3524735393%_)
                      (let ((_%L35396%_ _%tl3524735393%_))
                        (if (gx#stx-list? _%L35396%_)
                            (_%__kont3935939360%_ _%L35396%_)
                            (_%__match3940739408%_
                             _%e3524235376%_
                             _%hd3524335380%_
                             _%tl3524435383%_
                             _%e3524535386%_
                             _%hd3524635390%_
                             _%tl3524735393%_)))))
                   (_%__match3937939380%_
                    (lambda (_%e3523535481%_
                             _%hd3523635485%_
                             _%tl3523735488%_
                             _%e3523835491%_
                             _%hd3523935495%_
                             _%tl3524035498%_)
                      (let ((_%L35501%_ _%tl3524035498%_))
                        (if (gx#stx-list? _%L35501%_)
                            (_%__kont3935739358%_ _%L35501%_)
                            (_%__match3940739408%_
                             _%e3523535481%_
                             _%hd3523635485%_
                             _%tl3523735488%_
                             _%e3523835491%_
                             _%hd3523935495%_
                             _%tl3524035498%_))))))
              (if (gx#stx-pair? _%__stx3935439355%_)
                  (let ((_%e3523535481%_ (gx#syntax-e _%__stx3935439355%_)))
                    (let ((_%tl3523735488%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3523535481%_)))
                          (_%hd3523635485%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3523535481%_))))
                      (if (gx#stx-pair? _%tl3523735488%_)
                          (let ((_%e3523835491%_
                                 (gx#syntax-e _%tl3523735488%_)))
                            (let ((_%tl3524035498%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3523835491%_)))
                                  (_%hd3523935495%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3523835491%_))))
                              (if (gx#identifier? _%hd3523935495%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39951_|
                                       _%hd3523935495%_)
                                      (_%__match3937939380%_
                                       _%e3523535481%_
                                       _%hd3523635485%_
                                       _%tl3523735488%_
                                       _%e3523835491%_
                                       _%hd3523935495%_
                                       _%tl3524035498%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39952_|
                                           _%hd3523935495%_)
                                          (_%__match3939539396%_
                                           _%e3523535481%_
                                           _%hd3523635485%_
                                           _%tl3523735488%_
                                           _%e3523835491%_
                                           _%hd3523935495%_
                                           _%tl3524035498%_)
                                          (_%__match3940739408%_
                                           _%e3523535481%_
                                           _%hd3523635485%_
                                           _%tl3523735488%_
                                           _%e3523835491%_
                                           _%hd3523935495%_
                                           _%tl3524035498%_)))
                                  (_%__match3940739408%_
                                   _%e3523535481%_
                                   _%hd3523635485%_
                                   _%tl3523735488%_
                                   _%e3523835491%_
                                   _%hd3523935495%_
                                   _%tl3524035498%_))))
                          (let () (declare (not safe)) (_%g3523235261%_)))))
                  (let () (declare (not safe)) (_%g3523235261%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35583%_)
        (let* ((_%g3558635610%_
                (lambda (_%g3558735606%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3558735606%_)))
               (_%g3558535822%_
                (lambda (_%g3558735614%_)
                  (if (gx#stx-pair? _%g3558735614%_)
                      (let ((_%e3559035617%_ (gx#syntax-e _%g3558735614%_)))
                        (let ((_%hd3559135621%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3559035617%_)))
                              (_%tl3559235624%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3559035617%_))))
                          (if (gx#stx-pair? _%tl3559235624%_)
                              (let ((_%e3559335627%_
                                     (gx#syntax-e _%tl3559235624%_)))
                                (let ((_%hd3559435631%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3559335627%_)))
                                      (_%tl3559535634%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3559335627%_))))
                                  (if (gx#stx-pair/null? _%hd3559435631%_)
                                      (let ((_g39953_
                                             (gx#syntax-split-splice
                                              _%hd3559435631%_
                                              '0)))
                                        (begin
                                          (let ((_g39954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39953_)
                                                       (##values-length
                                                        _g39953_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39954_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39954_)))
                                          (let ((_%target3559635637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39953_ 0)))
                                                (_%tl3559835640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39953_ 1))))
                                            (if (gx#stx-null? _%tl3559835640%_)
                                                (letrec ((_%loop3559935643%_
                                                          (lambda (_%hd3559735647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3560335650%_)
                    (if (gx#stx-pair? _%hd3559735647%_)
                        (let ((_%e3560035653%_ (gx#syntax-e _%hd3559735647%_)))
                          (let ((_%lp-hd3560135657%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3560035653%_)))
                                (_%lp-tl3560235660%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3560035653%_))))
                            (_%loop3559935643%_
                             _%lp-tl3560235660%_
                             (cons _%lp-hd3560135657%_ _%e3560335650%_))))
                        (let ((_%e3560435663%_ (reverse _%e3560335650%_)))
                          ((lambda (_%L35667%_ _%L35669%_)
                             (if (gx#stx-list? _%L35667%_)
                                 (let* ((_%g3568735704%_
                                         (lambda (_%g3568835700%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3568835700%_)))
                                        (_%g3568635810%_
                                         (lambda (_%g3568835708%_)
                                           (if (gx#stx-pair/null?
                                                _%g3568835708%_)
                                               (let ((_g39955_
                                                      (gx#syntax-split-splice
                                                       _%g3568835708%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39956_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39955_)
                        (##values-length _g39955_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39956_ 2)))
                 (error "Context expects 2 values" _g39956_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3569035711%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39955_
                                                             0)))
                                                         (_%tl3569235714%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39955_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3569235714%_)
                                                         (letrec ((_%loop3569335717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3569135721%_ _%$e3569735724%_)
                             (if (gx#stx-pair? _%hd3569135721%_)
                                 (let ((_%e3569435727%_
                                        (gx#syntax-e _%hd3569135721%_)))
                                   (let ((_%lp-hd3569535731%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3569435727%_)))
                                         (_%lp-tl3569635734%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3569435727%_))))
                                     (_%loop3569335717%_
                                      _%lp-tl3569635734%_
                                      (cons _%lp-hd3569535731%_
                                            _%$e3569735724%_))))
                                 (let ((_%$e3569835737%_
                                        (reverse _%$e3569735724%_)))
                                   ((lambda (_%L35741%_)
                                      (let* ((_%g3575735765%_
                                              (lambda (_%g3575835761%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3575835761%_)))
                                             (_%g3575635798%_
                                              (lambda (_%g3575835769%_)
                                                ((lambda (_%L35772%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _%L35669%_ _%L35741%_)
                         (foldr (lambda (_%g3578635790%_
                                         _%g3578735793%_
                                         _%g3578835795%_)
                                  (cons (cons _%g3578735793%_
                                              (cons _%g3578635790%_ '()))
                                        _%g3578835795%_))
                                '()
                                _%L35669%_
                                _%L35741%_))
                       (cons _%L35772%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3575835769%_))))
                                        (_%g3575635798%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35583%_
                                          (foldr (lambda (_%g3580135804%_
                                                          _%g3580235807%_)
                                                   (cons _%g3580135804%_
                                                         _%g3580235807%_))
                                                 '()
                                                 _%L35741%_)
                                          _%L35667%_))))
                                    _%$e3569835737%_))))))
                   (_%loop3569335717%_ _%target3569035711%_ '()))
                 (_%g3568735704%_ _%g3568835708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3568735704%_
                                                _%g3568835708%_)))))
                                   (_%g3568635810%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3581335816%_
                                                     _%g3581435819%_)
                                              (cons _%g3581335816%_
                                                    _%g3581435819%_))
                                            '()
                                            _%L35669%_))))
                                 (_%g3558635610%_ _%g3558735614%_)))
                           _%tl3559535634%_
                           _%e3560435663%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3559935643%_
                                                   _%target3559635637%_
                                                   '()))
                                                (_%g3558635610%_
                                                 _%g3558735614%_)))))
                                      (_%g3558635610%_ _%g3558735614%_))))
                              (_%g3558635610%_ _%g3558735614%_))))
                      (_%g3558635610%_ _%g3558735614%_)))))
          (_%g3558535822%_ _%stx35583%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35828%_)
        (let* ((_%__stx3941039411%_ _%$stx35828%_)
               (_%g3583435917%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3941039411%_))))
          (let ((_%__kont3941339414%_
                 (lambda (_%L36247%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3626336266%_ _%g3626436269%_)
                                        (cons _%g3626336266%_ _%g3626436269%_))
                                      '()
                                      _%L36247%_)))))
                (_%__kont3941739418%_
                 (lambda (_%L36155%_ _%L36157%_ _%L36158%_ _%L36159%_)
                   (cons _%L36159%_
                         (cons (cons (cons _%L36158%_ (cons _%L36157%_ '()))
                                     '())
                               (foldr (lambda (_%g3618136184%_ _%g3618236187%_)
                                        (cons _%g3618136184%_ _%g3618236187%_))
                                      '()
                                      _%L36155%_)))))
                (_%__kont3942139422%_
                 (lambda (_%L36028%_ _%L36030%_ _%L36031%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3605336060%_ _%g3605436063%_)
                                        (cons _%g3605336060%_ _%g3605436063%_))
                                      '()
                                      _%L36030%_)
                               (cons (cons (foldr (lambda (_%g3605536066%_
                                                           _%g3605636069%_)
                                                    (cons _%g3605536066%_
                                                          _%g3605636069%_))
                                                  '()
                                                  _%L36031%_)
                                           (foldr (lambda (_%g3605736072%_
                                                           _%g3605836075%_)
                                                    (cons _%g3605736072%_
                                                          _%g3605836075%_))
                                                  '()
                                                  _%L36028%_))
                                     '()))))))
            (let* ((_%__match3950339504%_
                    (lambda (_%e3588035924%_
                             _%hd3588135928%_
                             _%tl3588235931%_
                             _%e3588335934%_
                             _%hd3588435938%_
                             _%tl3588535941%_
                             _%__splice3942339424%_
                             _%target3588635944%_
                             _%tl3588835947%_)
                      (letrec ((_%loop3588935950%_
                                (lambda (_%hd3588735954%_
                                         _%expr3589335957%_
                                         _%hd3589435959%_)
                                  (if (gx#stx-pair? _%hd3588735954%_)
                                      (let ((_%e3589035962%_
                                             (gx#syntax-e _%hd3588735954%_)))
                                        (let ((_%lp-tl3589235969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3589035962%_)))
                                              (_%lp-hd3589135966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3589035962%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3589135966%_)
                                              (let ((_%e3589735972%_
                                                     (gx#syntax-e
                                                      _%lp-hd3589135966%_)))
                                                (let ((_%tl3589935979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3589735972%_)))
                                                      (_%hd3589835976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3589735972%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3589935979%_)
                                                      (let ((_%e3590035982%_
                                                             (gx#syntax-e
                                                              _%tl3589935979%_)))
                                                        (let ((_%tl3590235989%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3590035982%_)))
                      (_%hd3590135986%_
                       (let () (declare (not safe)) (##car _%e3590035982%_))))
                  (if (gx#stx-null? _%tl3590235989%_)
                      (_%loop3588935950%_
                       _%lp-tl3589235969%_
                       (cons _%hd3590135986%_ _%expr3589335957%_)
                       (cons _%hd3589835976%_ _%hd3589435959%_))
                      (let () (declare (not safe)) (_%g3583435917%_)))))
              (let () (declare (not safe)) (_%g3583435917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3583435917%_)))))
                                      (let ((_%hd3589635995%_
                                             (reverse _%hd3589435959%_))
                                            (_%expr3589535992%_
                                             (reverse _%expr3589335957%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3588535941%_)
                                            (let ((_%__splice3942539426%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3588535941%_
                                                    '0)))
                                              (let ((_%tl3590536001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3942539426%_
                                                        '1)))
                                                    (_%target3590335998%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3942539426%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3590536001%_)
                                                    (letrec ((_%loop3590636004%_
                                                              (lambda (_%hd3590436008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3591036011%_)
                        (if (gx#stx-pair? _%hd3590436008%_)
                            (let ((_%e3590736014%_
                                   (gx#syntax-e _%hd3590436008%_)))
                              (let ((_%lp-tl3590936021%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3590736014%_)))
                                    (_%lp-hd3590836018%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3590736014%_))))
                                (_%loop3590636004%_
                                 _%lp-tl3590936021%_
                                 (cons _%lp-hd3590836018%_
                                       _%body3591036011%_))))
                            (let ((_%body3591136024%_
                                   (reverse _%body3591036011%_)))
                              (_%__kont3942139422%_
                               _%body3591136024%_
                               _%expr3589535992%_
                               _%hd3589635995%_))))))
              (_%loop3590636004%_ _%target3590335998%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3583435917%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3583435917%_))))))))
                        (_%loop3588935950%_ _%target3588635944%_ '() '()))))
                   (_%__match3949539496%_
                    (lambda (_%e3588035924%_
                             _%hd3588135928%_
                             _%tl3588235931%_
                             _%e3588335934%_
                             _%hd3588435938%_
                             _%tl3588535941%_)
                      (if (gx#stx-pair/null? _%hd3588435938%_)
                          (let ((_%__splice3942339424%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3588435938%_
                                  '0)))
                            (let ((_%tl3588835947%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3942339424%_ '1)))
                                  (_%target3588635944%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3942339424%_
                                      '0))))
                              (if (gx#stx-null? _%tl3588835947%_)
                                  (_%__match3950339504%_
                                   _%e3588035924%_
                                   _%hd3588135928%_
                                   _%tl3588235931%_
                                   _%e3588335934%_
                                   _%hd3588435938%_
                                   _%tl3588535941%_
                                   _%__splice3942339424%_
                                   _%target3588635944%_
                                   _%tl3588835947%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3583435917%_)))))
                          (let () (declare (not safe)) (_%g3583435917%_)))))
                   (_%__match3948339484%_
                    (lambda (_%e3585636085%_
                             _%hd3585736089%_
                             _%tl3585836092%_
                             _%e3585936095%_
                             _%hd3586036099%_
                             _%tl3586136102%_
                             _%e3586236105%_
                             _%hd3586336109%_
                             _%tl3586436112%_
                             _%e3586536115%_
                             _%hd3586636119%_
                             _%tl3586736122%_
                             _%__splice3941939420%_
                             _%target3586836125%_
                             _%tl3587036128%_)
                      (letrec ((_%loop3587136131%_
                                (lambda (_%hd3586936135%_ _%body3587536138%_)
                                  (if (gx#stx-pair? _%hd3586936135%_)
                                      (let ((_%e3587236141%_
                                             (gx#syntax-e _%hd3586936135%_)))
                                        (let ((_%lp-tl3587436148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3587236141%_)))
                                              (_%lp-hd3587336145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3587236141%_))))
                                          (_%loop3587136131%_
                                           _%lp-tl3587436148%_
                                           (cons _%lp-hd3587336145%_
                                                 _%body3587536138%_))))
                                      (let ((_%body3587636151%_
                                             (reverse _%body3587536138%_)))
                                        (let ((_%L36155%_ _%body3587636151%_)
                                              (_%L36157%_ _%hd3586636119%_)
                                              (_%L36158%_ _%hd3586336109%_)
                                              (_%L36159%_ _%hd3585736089%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%L36158%_)
                                              (_%__kont3941739418%_
                                               _%L36155%_
                                               _%L36157%_
                                               _%L36158%_
                                               _%L36159%_)
                                              (_%__match3949539496%_
                                               _%e3585636085%_
                                               _%hd3585736089%_
                                               _%tl3585836092%_
                                               _%e3585936095%_
                                               _%hd3586036099%_
                                               _%tl3586136102%_))))))))
                        (_%loop3587136131%_ _%target3586836125%_ '()))))
                   (_%__match3944939450%_
                    (lambda (_%e3583736197%_
                             _%hd3583836201%_
                             _%tl3583936204%_
                             _%e3584036207%_
                             _%hd3584136211%_
                             _%tl3584236214%_
                             _%__splice3941539416%_
                             _%target3584336217%_
                             _%tl3584536220%_)
                      (letrec ((_%loop3584636223%_
                                (lambda (_%hd3584436227%_ _%body3585036230%_)
                                  (if (gx#stx-pair? _%hd3584436227%_)
                                      (let ((_%e3584736233%_
                                             (gx#syntax-e _%hd3584436227%_)))
                                        (let ((_%lp-tl3584936240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3584736233%_)))
                                              (_%lp-hd3584836237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3584736233%_))))
                                          (_%loop3584636223%_
                                           _%lp-tl3584936240%_
                                           (cons _%lp-hd3584836237%_
                                                 _%body3585036230%_))))
                                      (let ((_%body3585136243%_
                                             (reverse _%body3585036230%_)))
                                        (_%__kont3941339414%_
                                         _%body3585136243%_))))))
                        (_%loop3584636223%_ _%target3584336217%_ '())))))
              (if (gx#stx-pair? _%__stx3941039411%_)
                  (let ((_%e3583736197%_ (gx#syntax-e _%__stx3941039411%_)))
                    (let ((_%tl3583936204%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3583736197%_)))
                          (_%hd3583836201%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3583736197%_))))
                      (if (gx#stx-pair? _%tl3583936204%_)
                          (let ((_%e3584036207%_
                                 (gx#syntax-e _%tl3583936204%_)))
                            (let ((_%tl3584236214%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3584036207%_)))
                                  (_%hd3584136211%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3584036207%_))))
                              (if (gx#stx-null? _%hd3584136211%_)
                                  (if (gx#stx-pair/null? _%tl3584236214%_)
                                      (let ((_%__splice3941539416%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3584236214%_
                                              '0)))
                                        (let ((_%tl3584536220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3941539416%_
                                                  '1)))
                                              (_%target3584336217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3941539416%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3584536220%_)
                                              (_%__match3944939450%_
                                               _%e3583736197%_
                                               _%hd3583836201%_
                                               _%tl3583936204%_
                                               _%e3584036207%_
                                               _%hd3584136211%_
                                               _%tl3584236214%_
                                               _%__splice3941539416%_
                                               _%target3584336217%_
                                               _%tl3584536220%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3584136211%_)
                                                  (let ((_%__splice3942339424%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3584136211%_
                                                          '0)))
                                                    (let ((_%tl3588835947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3942339424%_
                                                              '1)))
                                                          (_%target3588635944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3942339424%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3588835947%_)
                                                          (_%__match3950339504%_
                                                           _%e3583736197%_
                                                           _%hd3583836201%_
                                                           _%tl3583936204%_
                                                           _%e3584036207%_
                                                           _%hd3584136211%_
                                                           _%tl3584236214%_
                                                           _%__splice3942339424%_
                                                           _%target3588635944%_
                                                           _%tl3588835947%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3583435917%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3583435917%_))))))
                                      (if (gx#stx-pair/null? _%hd3584136211%_)
                                          (let ((_%__splice3942339424%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3584136211%_
                                                  '0)))
                                            (let ((_%tl3588835947%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3942339424%_
                                                      '1)))
                                                  (_%target3588635944%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3942339424%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3588835947%_)
                                                  (_%__match3950339504%_
                                                   _%e3583736197%_
                                                   _%hd3583836201%_
                                                   _%tl3583936204%_
                                                   _%e3584036207%_
                                                   _%hd3584136211%_
                                                   _%tl3584236214%_
                                                   _%__splice3942339424%_
                                                   _%target3588635944%_
                                                   _%tl3588835947%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3583435917%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3583435917%_))))
                                  (if (gx#stx-pair? _%hd3584136211%_)
                                      (let ((_%e3586236105%_
                                             (gx#syntax-e _%hd3584136211%_)))
                                        (let ((_%tl3586436112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3586236105%_)))
                                              (_%hd3586336109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3586236105%_))))
                                          (if (gx#stx-pair? _%tl3586436112%_)
                                              (let ((_%e3586536115%_
                                                     (gx#syntax-e
                                                      _%tl3586436112%_)))
                                                (let ((_%tl3586736122%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3586536115%_)))
                                                      (_%hd3586636119%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3586536115%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3586736122%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3584236214%_)
                                                          (let ((_%__splice3941939420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3584236214%_ '0)))
                    (let ((_%tl3587036128%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3941939420%_ '1)))
                          (_%target3586836125%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3941939420%_ '0))))
                      (if (gx#stx-null? _%tl3587036128%_)
                          (_%__match3948339484%_
                           _%e3583736197%_
                           _%hd3583836201%_
                           _%tl3583936204%_
                           _%e3584036207%_
                           _%hd3584136211%_
                           _%tl3584236214%_
                           _%e3586236105%_
                           _%hd3586336109%_
                           _%tl3586436112%_
                           _%e3586536115%_
                           _%hd3586636119%_
                           _%tl3586736122%_
                           _%__splice3941939420%_
                           _%target3586836125%_
                           _%tl3587036128%_)
                          (if (gx#stx-pair/null? _%hd3584136211%_)
                              (let ((_%__splice3942339424%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3584136211%_
                                      '0)))
                                (let ((_%tl3588835947%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3942339424%_
                                          '1)))
                                      (_%target3588635944%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3942339424%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3588835947%_)
                                      (_%__match3950339504%_
                                       _%e3583736197%_
                                       _%hd3583836201%_
                                       _%tl3583936204%_
                                       _%e3584036207%_
                                       _%hd3584136211%_
                                       _%tl3584236214%_
                                       _%__splice3942339424%_
                                       _%target3588635944%_
                                       _%tl3588835947%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3583435917%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3583435917%_))))))
                  (if (gx#stx-pair/null? _%hd3584136211%_)
                      (let ((_%__splice3942339424%_
                             (gx#syntax-split-splice->vector
                              _%hd3584136211%_
                              '0)))
                        (let ((_%tl3588835947%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3942339424%_ '1)))
                              (_%target3588635944%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3942339424%_ '0))))
                          (if (gx#stx-null? _%tl3588835947%_)
                              (_%__match3950339504%_
                               _%e3583736197%_
                               _%hd3583836201%_
                               _%tl3583936204%_
                               _%e3584036207%_
                               _%hd3584136211%_
                               _%tl3584236214%_
                               _%__splice3942339424%_
                               _%target3588635944%_
                               _%tl3588835947%_)
                              (let ()
                                (declare (not safe))
                                (_%g3583435917%_)))))
                      (let () (declare (not safe)) (_%g3583435917%_))))
              (if (gx#stx-pair/null? _%hd3584136211%_)
                  (let ((_%__splice3942339424%_
                         (gx#syntax-split-splice->vector _%hd3584136211%_ '0)))
                    (let ((_%tl3588835947%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3942339424%_ '1)))
                          (_%target3588635944%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3942339424%_ '0))))
                      (if (gx#stx-null? _%tl3588835947%_)
                          (_%__match3950339504%_
                           _%e3583736197%_
                           _%hd3583836201%_
                           _%tl3583936204%_
                           _%e3584036207%_
                           _%hd3584136211%_
                           _%tl3584236214%_
                           _%__splice3942339424%_
                           _%target3588635944%_
                           _%tl3588835947%_)
                          (let () (declare (not safe)) (_%g3583435917%_)))))
                  (let () (declare (not safe)) (_%g3583435917%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3584136211%_)
                                                  (let ((_%__splice3942339424%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3584136211%_
                                                          '0)))
                                                    (let ((_%tl3588835947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3942339424%_
                                                              '1)))
                                                          (_%target3588635944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3942339424%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3588835947%_)
                                                          (_%__match3950339504%_
                                                           _%e3583736197%_
                                                           _%hd3583836201%_
                                                           _%tl3583936204%_
                                                           _%e3584036207%_
                                                           _%hd3584136211%_
                                                           _%tl3584236214%_
                                                           _%__splice3942339424%_
                                                           _%target3588635944%_
                                                           _%tl3588835947%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3583435917%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3583435917%_))))))
                                      (if (gx#stx-pair/null? _%hd3584136211%_)
                                          (let ((_%__splice3942339424%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3584136211%_
                                                  '0)))
                                            (let ((_%tl3588835947%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3942339424%_
                                                      '1)))
                                                  (_%target3588635944%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3942339424%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3588835947%_)
                                                  (_%__match3950339504%_
                                                   _%e3583736197%_
                                                   _%hd3583836201%_
                                                   _%tl3583936204%_
                                                   _%e3584036207%_
                                                   _%hd3584136211%_
                                                   _%tl3584236214%_
                                                   _%__splice3942339424%_
                                                   _%target3588635944%_
                                                   _%tl3588835947%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3583435917%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3583435917%_)))))))
                          (let () (declare (not safe)) (_%g3583435917%_)))))
                  (let () (declare (not safe)) (_%g3583435917%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36280%_)
        (let* ((_%__stx3950639507%_ _%$stx36280%_)
               (_%g3628536337%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3950639507%_))))
          (let ((_%__kont3950939510%_
                 (lambda (_%L36507%_
                          _%L36509%_
                          _%L36510%_
                          _%L36511%_
                          _%L36512%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36511%_ (cons _%L36510%_ '()))
                                     '())
                               (cons (cons _%L36512%_
                                           (cons _%L36509%_
                                                 (foldr (lambda (_%g3653736540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3653836543%_)
                  (cons _%g3653736540%_ _%g3653836543%_))
                '()
                _%L36507%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3951339514%_
                 (lambda (_%L36394%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3641136414%_ _%g3641236417%_)
                                        (cons _%g3641136414%_ _%g3641236417%_))
                                      '()
                                      _%L36394%_))))))
            (let* ((_%__match3957939580%_
                    (lambda (_%e3631736344%_
                             _%hd3631836348%_
                             _%tl3631936351%_
                             _%e3632036354%_
                             _%hd3632136358%_
                             _%tl3632236361%_
                             _%__splice3951539516%_
                             _%target3632336364%_
                             _%tl3632536367%_)
                      (letrec ((_%loop3632636370%_
                                (lambda (_%hd3632436374%_ _%body3633036377%_)
                                  (if (gx#stx-pair? _%hd3632436374%_)
                                      (let ((_%e3632736380%_
                                             (gx#syntax-e _%hd3632436374%_)))
                                        (let ((_%lp-tl3632936387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3632736380%_)))
                                              (_%lp-hd3632836384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3632736380%_))))
                                          (_%loop3632636370%_
                                           _%lp-tl3632936387%_
                                           (cons _%lp-hd3632836384%_
                                                 _%body3633036377%_))))
                                      (let ((_%body3633136390%_
                                             (reverse _%body3633036377%_)))
                                        (_%__kont3951339514%_
                                         _%body3633136390%_))))))
                        (_%loop3632636370%_ _%target3632336364%_ '()))))
                   (_%__match3955739558%_
                    (lambda (_%e3629236427%_
                             _%hd3629336431%_
                             _%tl3629436434%_
                             _%e3629536437%_
                             _%hd3629636441%_
                             _%tl3629736444%_
                             _%e3629836447%_
                             _%hd3629936451%_
                             _%tl3630036454%_
                             _%e3630136457%_
                             _%hd3630236461%_
                             _%tl3630336464%_
                             _%e3630436467%_
                             _%hd3630536471%_
                             _%tl3630636474%_
                             _%__splice3951139512%_
                             _%target3630736477%_
                             _%tl3630936480%_)
                      (letrec ((_%loop3631036483%_
                                (lambda (_%hd3630836487%_ _%body3631436490%_)
                                  (if (gx#stx-pair? _%hd3630836487%_)
                                      (let ((_%e3631136493%_
                                             (gx#syntax-e _%hd3630836487%_)))
                                        (let ((_%lp-tl3631336500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3631136493%_)))
                                              (_%lp-hd3631236497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3631136493%_))))
                                          (_%loop3631036483%_
                                           _%lp-tl3631336500%_
                                           (cons _%lp-hd3631236497%_
                                                 _%body3631436490%_))))
                                      (let ((_%body3631536503%_
                                             (reverse _%body3631436490%_)))
                                        (_%__kont3950939510%_
                                         _%body3631536503%_
                                         _%tl3630036454%_
                                         _%hd3630536471%_
                                         _%hd3630236461%_
                                         _%hd3629336431%_))))))
                        (_%loop3631036483%_ _%target3630736477%_ '())))))
              (if (gx#stx-pair? _%__stx3950639507%_)
                  (let ((_%e3629236427%_ (gx#syntax-e _%__stx3950639507%_)))
                    (let ((_%tl3629436434%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3629236427%_)))
                          (_%hd3629336431%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3629236427%_))))
                      (if (gx#stx-pair? _%tl3629436434%_)
                          (let ((_%e3629536437%_
                                 (gx#syntax-e _%tl3629436434%_)))
                            (let ((_%tl3629736444%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3629536437%_)))
                                  (_%hd3629636441%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3629536437%_))))
                              (if (gx#stx-pair? _%hd3629636441%_)
                                  (let ((_%e3629836447%_
                                         (gx#syntax-e _%hd3629636441%_)))
                                    (let ((_%tl3630036454%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3629836447%_)))
                                          (_%hd3629936451%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3629836447%_))))
                                      (if (gx#stx-pair? _%hd3629936451%_)
                                          (let ((_%e3630136457%_
                                                 (gx#syntax-e
                                                  _%hd3629936451%_)))
                                            (let ((_%tl3630336464%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3630136457%_)))
                                                  (_%hd3630236461%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3630136457%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3630336464%_)
                                                  (let ((_%e3630436467%_
                                                         (gx#syntax-e
                                                          _%tl3630336464%_)))
                                                    (let ((_%tl3630636474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3630436467%_)))
                                                          (_%hd3630536471%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3630436467%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3630636474%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3629736444%_)
                                                              (let ((_%__splice3951139512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3629736444%_
                              '0)))
                        (let ((_%tl3630936480%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3951139512%_ '1)))
                              (_%target3630736477%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3951139512%_ '0))))
                          (if (gx#stx-null? _%tl3630936480%_)
                              (_%__match3955739558%_
                               _%e3629236427%_
                               _%hd3629336431%_
                               _%tl3629436434%_
                               _%e3629536437%_
                               _%hd3629636441%_
                               _%tl3629736444%_
                               _%e3629836447%_
                               _%hd3629936451%_
                               _%tl3630036454%_
                               _%e3630136457%_
                               _%hd3630236461%_
                               _%tl3630336464%_
                               _%e3630436467%_
                               _%hd3630536471%_
                               _%tl3630636474%_
                               _%__splice3951139512%_
                               _%target3630736477%_
                               _%tl3630936480%_)
                              (let ()
                                (declare (not safe))
                                (_%g3628536337%_)))))
                      (let () (declare (not safe)) (_%g3628536337%_)))
                  (let () (declare (not safe)) (_%g3628536337%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3628536337%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3628536337%_)))))
                                  (if (gx#stx-null? _%hd3629636441%_)
                                      (if (gx#stx-pair/null? _%tl3629736444%_)
                                          (let ((_%__splice3951539516%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3629736444%_
                                                  '0)))
                                            (let ((_%tl3632536367%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3951539516%_
                                                      '1)))
                                                  (_%target3632336364%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3951539516%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3632536367%_)
                                                  (_%__match3957939580%_
                                                   _%e3629236427%_
                                                   _%hd3629336431%_
                                                   _%tl3629436434%_
                                                   _%e3629536437%_
                                                   _%hd3629636441%_
                                                   _%tl3629736444%_
                                                   _%__splice3951539516%_
                                                   _%target3632336364%_
                                                   _%tl3632536367%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3628536337%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3628536337%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3628536337%_))))))
                          (let () (declare (not safe)) (_%g3628536337%_)))))
                  (let () (declare (not safe)) (_%g3628536337%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36552%_)
        (let* ((_%__stx3958239583%_ _%$stx36552%_)
               (_%g3656336709%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3958239583%_))))
          (let ((_%__kont3958539586%_
                 (lambda (_%L37313%_ _%L37315%_ _%L37316%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3733737340%_ _%g3733837343%_)
                                  (cons (cons _%L37316%_
                                              (cons _%g3733737340%_
                                                    (cons _%L37313%_ '())))
                                        _%g3733837343%_))
                                '()
                                _%L37315%_))))
                (_%__kont3958939590%_
                 (lambda (_%L37203%_ _%L37205%_ _%L37206%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3722737230%_ _%g3722837233%_)
                                  (cons (cons _%L37206%_
                                              (cons _%g3722737230%_
                                                    (cons _%L37203%_ '())))
                                        _%g3722837233%_))
                                '()
                                _%L37205%_))))
                (_%__kont3959339594%_
                 (lambda (_%L37103%_ _%L37105%_ _%L37106%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L37106%_
                                     (cons _%L37105%_ (cons _%L37103%_ '())))
                               '()))))
                (_%__kont3959539596%_
                 (lambda (_%L37029%_ _%L37031%_)
                   (cons _%L37031%_ (cons _%L37029%_ '()))))
                (_%__kont3959739598%_
                 (lambda (_%L36977%_ _%L36979%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L36979%_
                                           (cons _%L36977%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3959939600%_
                 (lambda (_%L36929%_ _%L36931%_ _%L36932%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L36932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L36931%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36929%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3960139602%_
                 (lambda (_%L36860%_ _%L36862%_ _%L36863%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36863%_
                                                       (cons _%L36862%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36860%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3960339604%_
                 (lambda (_%L36780%_ _%L36782%_ _%L36783%_ _%L36784%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36784%_
                                                       (cons _%L36783%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36780%_
                                                             (cons (cons _%L36782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3975539756%_
                    (lambda (_%e3665336889%_
                             _%hd3665436893%_
                             _%tl3665536896%_
                             _%e3665636899%_
                             _%hd3665736903%_
                             _%tl3665836906%_
                             _%e3665936909%_
                             _%hd3666036913%_
                             _%tl3666136916%_)
                      (if (gx#identifier? _%hd3666036913%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39957_|
                               _%hd3666036913%_)
                              (if (gx#stx-pair? _%tl3666136916%_)
                                  (let ((_%e3666236919%_
                                         (gx#syntax-e _%tl3666136916%_)))
                                    (let ((_%tl3666436926%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3666236919%_)))
                                          (_%hd3666336923%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3666236919%_))))
                                      (if (gx#stx-null? _%tl3666436926%_)
                                          (_%__kont3959939600%_
                                           _%hd3666336923%_
                                           _%hd3665736903%_
                                           _%hd3665436893%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656336709%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656336709%_)))
                              (let () (declare (not safe)) (_%g3656336709%_)))
                          (if (gx#stx-datum? _%hd3666036913%_)
                              (let ((_%e3667736846%_
                                     (gx#stx-e _%hd3666036913%_)))
                                (if (equal? _%e3667736846%_ '::)
                                    (if (gx#stx-pair? _%tl3666136916%_)
                                        (let ((_%e3667836850%_
                                               (gx#syntax-e _%tl3666136916%_)))
                                          (let ((_%tl3668036857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3667836850%_)))
                                                (_%hd3667936854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3667836850%_))))
                                            (if (gx#stx-null? _%tl3668036857%_)
                                                (_%__kont3960139602%_
                                                 _%hd3667936854%_
                                                 _%hd3665736903%_
                                                 _%hd3665436893%_)
                                                (if (gx#stx-pair?
                                                     _%tl3668036857%_)
                                                    (let ((_%e3669836760%_
                                                           (gx#syntax-e
                                                            _%tl3668036857%_)))
                                                      (let ((_%tl3670036767%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3669836760%_)))
                    (_%hd3669936764%_
                     (let () (declare (not safe)) (##car _%e3669836760%_))))
                (if (gx#identifier? _%hd3669936764%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39958_|
                         _%hd3669936764%_)
                        (if (gx#stx-pair? _%tl3670036767%_)
                            (let ((_%e3670136770%_
                                   (gx#syntax-e _%tl3670036767%_)))
                              (let ((_%tl3670336777%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3670136770%_)))
                                    (_%hd3670236774%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3670136770%_))))
                                (if (gx#stx-null? _%tl3670336777%_)
                                    (_%__kont3960339604%_
                                     _%hd3670236774%_
                                     _%hd3667936854%_
                                     _%hd3665736903%_
                                     _%hd3665436893%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656336709%_)))))
                            (let () (declare (not safe)) (_%g3656336709%_)))
                        (let () (declare (not safe)) (_%g3656336709%_)))
                    (let () (declare (not safe)) (_%g3656336709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656336709%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656336709%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656336709%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3656336709%_))))))
                   (_%__match3973539736%_
                    (lambda (_%e3664436957%_
                             _%hd3664536961%_
                             _%tl3664636964%_
                             _%e3664736967%_
                             _%hd3664836971%_
                             _%tl3664936974%_)
                      (if (gx#stx-null? _%tl3664936974%_)
                          (_%__kont3959739598%_
                           _%hd3664836971%_
                           _%hd3664536961%_)
                          (if (gx#stx-pair? _%tl3664936974%_)
                              (let ((_%e3665936909%_
                                     (gx#syntax-e _%tl3664936974%_)))
                                (let ((_%tl3666136916%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3665936909%_)))
                                      (_%hd3666036913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3665936909%_))))
                                  (if (gx#identifier? _%hd3666036913%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39957_|
                                           _%hd3666036913%_)
                                          (if (gx#stx-pair? _%tl3666136916%_)
                                              (let ((_%e3666236919%_
                                                     (gx#syntax-e
                                                      _%tl3666136916%_)))
                                                (let ((_%tl3666436926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3666236919%_)))
                                                      (_%hd3666336923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3666236919%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3666436926%_)
                                                      (_%__kont3959939600%_
                                                       _%hd3666336923%_
                                                       _%hd3664836971%_
                                                       _%hd3664536961%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3656336709%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656336709%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656336709%_)))
                                      (if (gx#stx-datum? _%hd3666036913%_)
                                          (let ((_%e3667736846%_
                                                 (gx#stx-e _%hd3666036913%_)))
                                            (if (equal? _%e3667736846%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3666136916%_)
                                                    (let ((_%e3667836850%_
                                                           (gx#syntax-e
                                                            _%tl3666136916%_)))
                                                      (let ((_%tl3668036857%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3667836850%_)))
                    (_%hd3667936854%_
                     (let () (declare (not safe)) (##car _%e3667836850%_))))
                (if (gx#stx-null? _%tl3668036857%_)
                    (_%__kont3960139602%_
                     _%hd3667936854%_
                     _%hd3664836971%_
                     _%hd3664536961%_)
                    (if (gx#stx-pair? _%tl3668036857%_)
                        (let ((_%e3669836760%_ (gx#syntax-e _%tl3668036857%_)))
                          (let ((_%tl3670036767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3669836760%_)))
                                (_%hd3669936764%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3669836760%_))))
                            (if (gx#identifier? _%hd3669936764%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39958_|
                                     _%hd3669936764%_)
                                    (if (gx#stx-pair? _%tl3670036767%_)
                                        (let ((_%e3670136770%_
                                               (gx#syntax-e _%tl3670036767%_)))
                                          (let ((_%tl3670336777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3670136770%_)))
                                                (_%hd3670236774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3670136770%_))))
                                            (if (gx#stx-null? _%tl3670336777%_)
                                                (_%__kont3960339604%_
                                                 _%hd3670236774%_
                                                 _%hd3667936854%_
                                                 _%hd3664836971%_
                                                 _%hd3664536961%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656336709%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656336709%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656336709%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656336709%_)))))
                        (let () (declare (not safe)) (_%g3656336709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656336709%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656336709%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656336709%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3656336709%_))))))
                   (_%__match3966539666%_
                    (lambda (_%e3659237133%_
                             _%hd3659337137%_
                             _%tl3659437140%_
                             _%e3659537143%_
                             _%hd3659637147%_
                             _%tl3659737150%_
                             _%e3659837153%_
                             _%hd3659937157%_
                             _%tl3660037160%_
                             _%__splice3959139592%_
                             _%target3660137163%_
                             _%tl3660337166%_)
                      (letrec ((_%loop3660437169%_
                                (lambda (_%hd3660237173%_ _%pred3660837176%_)
                                  (if (gx#stx-pair? _%hd3660237173%_)
                                      (let ((_%e3660537179%_
                                             (gx#syntax-e _%hd3660237173%_)))
                                        (let ((_%lp-tl3660737186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3660537179%_)))
                                              (_%lp-hd3660637183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3660537179%_))))
                                          (_%loop3660437169%_
                                           _%lp-tl3660737186%_
                                           (cons _%lp-hd3660637183%_
                                                 _%pred3660837176%_))))
                                      (let ((_%pred3660937189%_
                                             (reverse _%pred3660837176%_)))
                                        (if (gx#stx-pair? _%tl3659737150%_)
                                            (let ((_%e3661037193%_
                                                   (gx#syntax-e
                                                    _%tl3659737150%_)))
                                              (let ((_%tl3661237200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3661037193%_)))
                                                    (_%hd3661137197%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3661037193%_))))
                                                (if (gx#stx-null?
                                                     _%tl3661237200%_)
                                                    (_%__kont3958939590%_
                                                     _%hd3661137197%_
                                                     _%pred3660937189%_
                                                     _%hd3659337137%_)
                                                    (_%__match3975539756%_
                                                     _%e3659237133%_
                                                     _%hd3659337137%_
                                                     _%tl3659437140%_
                                                     _%e3659537143%_
                                                     _%hd3659637147%_
                                                     _%tl3659737150%_
                                                     _%e3661037193%_
                                                     _%hd3661137197%_
                                                     _%tl3661237200%_))))
                                            (_%__match3973539736%_
                                             _%e3659237133%_
                                             _%hd3659337137%_
                                             _%tl3659437140%_
                                             _%e3659537143%_
                                             _%hd3659637147%_
                                             _%tl3659737150%_)))))))
                        (_%loop3660437169%_ _%target3660137163%_ '()))))
                   (_%__match3963539636%_
                    (lambda (_%e3656837243%_
                             _%hd3656937247%_
                             _%tl3657037250%_
                             _%e3657137253%_
                             _%hd3657237257%_
                             _%tl3657337260%_
                             _%e3657437263%_
                             _%hd3657537267%_
                             _%tl3657637270%_
                             _%__splice3958739588%_
                             _%target3657737273%_
                             _%tl3657937276%_)
                      (letrec ((_%loop3658037279%_
                                (lambda (_%hd3657837283%_ _%pred3658437286%_)
                                  (if (gx#stx-pair? _%hd3657837283%_)
                                      (let ((_%e3658137289%_
                                             (gx#syntax-e _%hd3657837283%_)))
                                        (let ((_%lp-tl3658337296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3658137289%_)))
                                              (_%lp-hd3658237293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3658137289%_))))
                                          (_%loop3658037279%_
                                           _%lp-tl3658337296%_
                                           (cons _%lp-hd3658237293%_
                                                 _%pred3658437286%_))))
                                      (let ((_%pred3658537299%_
                                             (reverse _%pred3658437286%_)))
                                        (if (gx#stx-pair? _%tl3657337260%_)
                                            (let ((_%e3658637303%_
                                                   (gx#syntax-e
                                                    _%tl3657337260%_)))
                                              (let ((_%tl3658837310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3658637303%_)))
                                                    (_%hd3658737307%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3658637303%_))))
                                                (if (gx#stx-null?
                                                     _%tl3658837310%_)
                                                    (_%__kont3958539586%_
                                                     _%hd3658737307%_
                                                     _%pred3658537299%_
                                                     _%hd3656937247%_)
                                                    (_%__match3975539756%_
                                                     _%e3656837243%_
                                                     _%hd3656937247%_
                                                     _%tl3657037250%_
                                                     _%e3657137253%_
                                                     _%hd3657237257%_
                                                     _%tl3657337260%_
                                                     _%e3658637303%_
                                                     _%hd3658737307%_
                                                     _%tl3658837310%_))))
                                            (_%__match3973539736%_
                                             _%e3656837243%_
                                             _%hd3656937247%_
                                             _%tl3657037250%_
                                             _%e3657137253%_
                                             _%hd3657237257%_
                                             _%tl3657337260%_)))))))
                        (_%loop3658037279%_ _%target3657737273%_ '())))))
              (if (gx#stx-pair? _%__stx3958239583%_)
                  (let ((_%e3656837243%_ (gx#syntax-e _%__stx3958239583%_)))
                    (let ((_%tl3657037250%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3656837243%_)))
                          (_%hd3656937247%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3656837243%_))))
                      (if (gx#stx-pair? _%tl3657037250%_)
                          (let ((_%e3657137253%_
                                 (gx#syntax-e _%tl3657037250%_)))
                            (let ((_%tl3657337260%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3657137253%_)))
                                  (_%hd3657237257%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3657137253%_))))
                              (if (gx#stx-pair? _%hd3657237257%_)
                                  (let ((_%e3657437263%_
                                         (gx#syntax-e _%hd3657237257%_)))
                                    (let ((_%tl3657637270%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3657437263%_)))
                                          (_%hd3657537267%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3657437263%_))))
                                      (if (gx#identifier? _%hd3657537267%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39959_|
                                               _%hd3657537267%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3657637270%_)
                                                  (let ((_%__splice3958739588%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3657637270%_
                                                          '0)))
                                                    (let ((_%tl3657937276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3958739588%_
                                                              '1)))
                                                          (_%target3657737273%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3958739588%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3657937276%_)
                                                          (_%__match3963539636%_
                                                           _%e3656837243%_
                                                           _%hd3656937247%_
                                                           _%tl3657037250%_
                                                           _%e3657137253%_
                                                           _%hd3657237257%_
                                                           _%tl3657337260%_
                                                           _%e3657437263%_
                                                           _%hd3657537267%_
                                                           _%tl3657637270%_
                                                           _%__splice3958739588%_
                                                           _%target3657737273%_
                                                           _%tl3657937276%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3657337260%_)
                                                              (let ((_%e3663937019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3657337260%_)))
                        (let ((_%tl3664137026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3663937019%_)))
                              (_%hd3664037023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3663937019%_))))
                          (if (gx#stx-null? _%tl3664137026%_)
                              (_%__kont3959539596%_
                               _%hd3664037023%_
                               _%hd3657237257%_)
                              (if (gx#identifier? _%hd3664037023%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39957_|
                                       _%hd3664037023%_)
                                      (if (gx#stx-pair? _%tl3664137026%_)
                                          (let ((_%e3666236919%_
                                                 (gx#syntax-e
                                                  _%tl3664137026%_)))
                                            (let ((_%tl3666436926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3666236919%_)))
                                                  (_%hd3666336923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3666236919%_))))
                                              (if (gx#stx-null?
                                                   _%tl3666436926%_)
                                                  (_%__kont3959939600%_
                                                   _%hd3666336923%_
                                                   _%hd3657237257%_
                                                   _%hd3656937247%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3656336709%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656336709%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3656336709%_)))
                                  (if (gx#stx-datum? _%hd3664037023%_)
                                      (let ((_%e3667736846%_
                                             (gx#stx-e _%hd3664037023%_)))
                                        (if (equal? _%e3667736846%_ '::)
                                            (if (gx#stx-pair? _%tl3664137026%_)
                                                (let ((_%e3667836850%_
                                                       (gx#syntax-e
                                                        _%tl3664137026%_)))
                                                  (let ((_%tl3668036857%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3667836850%_)))
                                                        (_%hd3667936854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3667836850%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3668036857%_)
                                                        (_%__kont3960139602%_
                                                         _%hd3667936854%_
                                                         _%hd3657237257%_
                                                         _%hd3656937247%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3668036857%_)
                                                            (let ((_%e3669836760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3668036857%_)))
                      (let ((_%tl3670036767%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3669836760%_)))
                            (_%hd3669936764%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3669836760%_))))
                        (if (gx#identifier? _%hd3669936764%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39958_|
                                 _%hd3669936764%_)
                                (if (gx#stx-pair? _%tl3670036767%_)
                                    (let ((_%e3670136770%_
                                           (gx#syntax-e _%tl3670036767%_)))
                                      (let ((_%tl3670336777%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3670136770%_)))
                                            (_%hd3670236774%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3670136770%_))))
                                        (if (gx#stx-null? _%tl3670336777%_)
                                            (_%__kont3960339604%_
                                             _%hd3670236774%_
                                             _%hd3667936854%_
                                             _%hd3657237257%_
                                             _%hd3656937247%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656336709%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656336709%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656336709%_)))
                            (let () (declare (not safe)) (_%g3656336709%_)))))
                    (let () (declare (not safe)) (_%g3656336709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656336709%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656336709%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3656336709%_)))))))
                      (if (gx#stx-null? _%tl3657337260%_)
                          (_%__kont3959739598%_
                           _%hd3657237257%_
                           _%hd3656937247%_)
                          (let () (declare (not safe)) (_%g3656336709%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3657337260%_)
                                                      (let ((_%e3663937019%_
                                                             (gx#syntax-e
                                                              _%tl3657337260%_)))
                                                        (let ((_%tl3664137026%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3663937019%_)))
                      (_%hd3664037023%_
                       (let () (declare (not safe)) (##car _%e3663937019%_))))
                  (if (gx#stx-null? _%tl3664137026%_)
                      (_%__kont3959539596%_ _%hd3664037023%_ _%hd3657237257%_)
                      (if (gx#identifier? _%hd3664037023%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39957_|
                               _%hd3664037023%_)
                              (if (gx#stx-pair? _%tl3664137026%_)
                                  (let ((_%e3666236919%_
                                         (gx#syntax-e _%tl3664137026%_)))
                                    (let ((_%tl3666436926%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3666236919%_)))
                                          (_%hd3666336923%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3666236919%_))))
                                      (if (gx#stx-null? _%tl3666436926%_)
                                          (_%__kont3959939600%_
                                           _%hd3666336923%_
                                           _%hd3657237257%_
                                           _%hd3656937247%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656336709%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656336709%_)))
                              (let () (declare (not safe)) (_%g3656336709%_)))
                          (if (gx#stx-datum? _%hd3664037023%_)
                              (let ((_%e3667736846%_
                                     (gx#stx-e _%hd3664037023%_)))
                                (if (equal? _%e3667736846%_ '::)
                                    (if (gx#stx-pair? _%tl3664137026%_)
                                        (let ((_%e3667836850%_
                                               (gx#syntax-e _%tl3664137026%_)))
                                          (let ((_%tl3668036857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3667836850%_)))
                                                (_%hd3667936854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3667836850%_))))
                                            (if (gx#stx-null? _%tl3668036857%_)
                                                (_%__kont3960139602%_
                                                 _%hd3667936854%_
                                                 _%hd3657237257%_
                                                 _%hd3656937247%_)
                                                (if (gx#stx-pair?
                                                     _%tl3668036857%_)
                                                    (let ((_%e3669836760%_
                                                           (gx#syntax-e
                                                            _%tl3668036857%_)))
                                                      (let ((_%tl3670036767%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3669836760%_)))
                    (_%hd3669936764%_
                     (let () (declare (not safe)) (##car _%e3669836760%_))))
                (if (gx#identifier? _%hd3669936764%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39958_|
                         _%hd3669936764%_)
                        (if (gx#stx-pair? _%tl3670036767%_)
                            (let ((_%e3670136770%_
                                   (gx#syntax-e _%tl3670036767%_)))
                              (let ((_%tl3670336777%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3670136770%_)))
                                    (_%hd3670236774%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3670136770%_))))
                                (if (gx#stx-null? _%tl3670336777%_)
                                    (_%__kont3960339604%_
                                     _%hd3670236774%_
                                     _%hd3667936854%_
                                     _%hd3657237257%_
                                     _%hd3656937247%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656336709%_)))))
                            (let () (declare (not safe)) (_%g3656336709%_)))
                        (let () (declare (not safe)) (_%g3656336709%_)))
                    (let () (declare (not safe)) (_%g3656336709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656336709%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656336709%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656336709%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3656336709%_)))))))
              (if (gx#stx-null? _%tl3657337260%_)
                  (_%__kont3959739598%_ _%hd3657237257%_ _%hd3656937247%_)
                  (let () (declare (not safe)) (_%g3656336709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39960_|
                                                   _%hd3657537267%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3657637270%_)
                                                      (let ((_%__splice3959139592%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3657637270%_
                                                              '0)))
                                                        (let ((_%tl3660337166%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3959139592%_ '1)))
                      (_%target3660137163%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3959139592%_ '0))))
                  (if (gx#stx-null? _%tl3660337166%_)
                      (_%__match3966539666%_
                       _%e3656837243%_
                       _%hd3656937247%_
                       _%tl3657037250%_
                       _%e3657137253%_
                       _%hd3657237257%_
                       _%tl3657337260%_
                       _%e3657437263%_
                       _%hd3657537267%_
                       _%tl3657637270%_
                       _%__splice3959139592%_
                       _%target3660137163%_
                       _%tl3660337166%_)
                      (if (gx#stx-pair? _%tl3657337260%_)
                          (let ((_%e3663937019%_
                                 (gx#syntax-e _%tl3657337260%_)))
                            (let ((_%tl3664137026%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3663937019%_)))
                                  (_%hd3664037023%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3663937019%_))))
                              (if (gx#stx-null? _%tl3664137026%_)
                                  (_%__kont3959539596%_
                                   _%hd3664037023%_
                                   _%hd3657237257%_)
                                  (if (gx#identifier? _%hd3664037023%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39957_|
                                           _%hd3664037023%_)
                                          (if (gx#stx-pair? _%tl3664137026%_)
                                              (let ((_%e3666236919%_
                                                     (gx#syntax-e
                                                      _%tl3664137026%_)))
                                                (let ((_%tl3666436926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3666236919%_)))
                                                      (_%hd3666336923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3666236919%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3666436926%_)
                                                      (_%__kont3959939600%_
                                                       _%hd3666336923%_
                                                       _%hd3657237257%_
                                                       _%hd3656937247%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3656336709%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656336709%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656336709%_)))
                                      (if (gx#stx-datum? _%hd3664037023%_)
                                          (let ((_%e3667736846%_
                                                 (gx#stx-e _%hd3664037023%_)))
                                            (if (equal? _%e3667736846%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3664137026%_)
                                                    (let ((_%e3667836850%_
                                                           (gx#syntax-e
                                                            _%tl3664137026%_)))
                                                      (let ((_%tl3668036857%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3667836850%_)))
                    (_%hd3667936854%_
                     (let () (declare (not safe)) (##car _%e3667836850%_))))
                (if (gx#stx-null? _%tl3668036857%_)
                    (_%__kont3960139602%_
                     _%hd3667936854%_
                     _%hd3657237257%_
                     _%hd3656937247%_)
                    (if (gx#stx-pair? _%tl3668036857%_)
                        (let ((_%e3669836760%_ (gx#syntax-e _%tl3668036857%_)))
                          (let ((_%tl3670036767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3669836760%_)))
                                (_%hd3669936764%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3669836760%_))))
                            (if (gx#identifier? _%hd3669936764%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39958_|
                                     _%hd3669936764%_)
                                    (if (gx#stx-pair? _%tl3670036767%_)
                                        (let ((_%e3670136770%_
                                               (gx#syntax-e _%tl3670036767%_)))
                                          (let ((_%tl3670336777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3670136770%_)))
                                                (_%hd3670236774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3670136770%_))))
                                            (if (gx#stx-null? _%tl3670336777%_)
                                                (_%__kont3960339604%_
                                                 _%hd3670236774%_
                                                 _%hd3667936854%_
                                                 _%hd3657237257%_
                                                 _%hd3656937247%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656336709%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656336709%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656336709%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656336709%_)))))
                        (let () (declare (not safe)) (_%g3656336709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656336709%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656336709%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656336709%_)))))))
                          (if (gx#stx-null? _%tl3657337260%_)
                              (_%__kont3959739598%_
                               _%hd3657237257%_
                               _%hd3656937247%_)
                              (let ()
                                (declare (not safe))
                                (_%g3656336709%_)))))))
              (if (gx#stx-pair? _%tl3657337260%_)
                  (let ((_%e3663937019%_ (gx#syntax-e _%tl3657337260%_)))
                    (let ((_%tl3664137026%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3663937019%_)))
                          (_%hd3664037023%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3663937019%_))))
                      (if (gx#stx-null? _%tl3664137026%_)
                          (_%__kont3959539596%_
                           _%hd3664037023%_
                           _%hd3657237257%_)
                          (if (gx#identifier? _%hd3664037023%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39957_|
                                   _%hd3664037023%_)
                                  (if (gx#stx-pair? _%tl3664137026%_)
                                      (let ((_%e3666236919%_
                                             (gx#syntax-e _%tl3664137026%_)))
                                        (let ((_%tl3666436926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3666236919%_)))
                                              (_%hd3666336923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3666236919%_))))
                                          (if (gx#stx-null? _%tl3666436926%_)
                                              (_%__kont3959939600%_
                                               _%hd3666336923%_
                                               _%hd3657237257%_
                                               _%hd3656937247%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656336709%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3656336709%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656336709%_)))
                              (if (gx#stx-datum? _%hd3664037023%_)
                                  (let ((_%e3667736846%_
                                         (gx#stx-e _%hd3664037023%_)))
                                    (if (equal? _%e3667736846%_ '::)
                                        (if (gx#stx-pair? _%tl3664137026%_)
                                            (let ((_%e3667836850%_
                                                   (gx#syntax-e
                                                    _%tl3664137026%_)))
                                              (let ((_%tl3668036857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3667836850%_)))
                                                    (_%hd3667936854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3667836850%_))))
                                                (if (gx#stx-null?
                                                     _%tl3668036857%_)
                                                    (_%__kont3960139602%_
                                                     _%hd3667936854%_
                                                     _%hd3657237257%_
                                                     _%hd3656937247%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3668036857%_)
                                                        (let ((_%e3669836760%_
                                                               (gx#syntax-e
                                                                _%tl3668036857%_)))
                                                          (let ((_%tl3670036767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3669836760%_)))
                        (_%hd3669936764%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3669836760%_))))
                    (if (gx#identifier? _%hd3669936764%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39958_|
                             _%hd3669936764%_)
                            (if (gx#stx-pair? _%tl3670036767%_)
                                (let ((_%e3670136770%_
                                       (gx#syntax-e _%tl3670036767%_)))
                                  (let ((_%tl3670336777%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3670136770%_)))
                                        (_%hd3670236774%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3670136770%_))))
                                    (if (gx#stx-null? _%tl3670336777%_)
                                        (_%__kont3960339604%_
                                         _%hd3670236774%_
                                         _%hd3667936854%_
                                         _%hd3657237257%_
                                         _%hd3656937247%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656336709%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656336709%_)))
                            (let () (declare (not safe)) (_%g3656336709%_)))
                        (let () (declare (not safe)) (_%g3656336709%_)))))
                (let () (declare (not safe)) (_%g3656336709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656336709%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656336709%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656336709%_)))))))
                  (if (gx#stx-null? _%tl3657337260%_)
                      (_%__kont3959739598%_ _%hd3657237257%_ _%hd3656937247%_)
                      (let () (declare (not safe)) (_%g3656336709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39961_|
                                                       _%hd3657537267%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3657637270%_)
                                                          (let ((_%e3662537083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3657637270%_)))
                    (let ((_%tl3662737090%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3662537083%_)))
                          (_%hd3662637087%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3662537083%_))))
                      (if (gx#stx-null? _%tl3662737090%_)
                          (if (gx#stx-pair? _%tl3657337260%_)
                              (let ((_%e3662837093%_
                                     (gx#syntax-e _%tl3657337260%_)))
                                (let ((_%tl3663037100%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3662837093%_)))
                                      (_%hd3662937097%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3662837093%_))))
                                  (if (gx#stx-null? _%tl3663037100%_)
                                      (_%__kont3959339594%_
                                       _%hd3662937097%_
                                       _%hd3662637087%_
                                       _%hd3656937247%_)
                                      (if (gx#identifier? _%hd3662937097%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39957_|
                                               _%hd3662937097%_)
                                              (if (gx#stx-pair?
                                                   _%tl3663037100%_)
                                                  (let ((_%e3666236919%_
                                                         (gx#syntax-e
                                                          _%tl3663037100%_)))
                                                    (let ((_%tl3666436926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3666236919%_)))
                                                          (_%hd3666336923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3666236919%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3666436926%_)
                                                          (_%__kont3959939600%_
                                                           _%hd3666336923%_
                                                           _%hd3657237257%_
                                                           _%hd3656937247%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3656336709%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3656336709%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656336709%_)))
                                          (if (gx#stx-datum? _%hd3662937097%_)
                                              (let ((_%e3667736846%_
                                                     (gx#stx-e
                                                      _%hd3662937097%_)))
                                                (if (equal? _%e3667736846%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3663037100%_)
                                                        (let ((_%e3667836850%_
                                                               (gx#syntax-e
                                                                _%tl3663037100%_)))
                                                          (let ((_%tl3668036857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3667836850%_)))
                        (_%hd3667936854%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3667836850%_))))
                    (if (gx#stx-null? _%tl3668036857%_)
                        (_%__kont3960139602%_
                         _%hd3667936854%_
                         _%hd3657237257%_
                         _%hd3656937247%_)
                        (if (gx#stx-pair? _%tl3668036857%_)
                            (let ((_%e3669836760%_
                                   (gx#syntax-e _%tl3668036857%_)))
                              (let ((_%tl3670036767%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3669836760%_)))
                                    (_%hd3669936764%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3669836760%_))))
                                (if (gx#identifier? _%hd3669936764%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39958_|
                                         _%hd3669936764%_)
                                        (if (gx#stx-pair? _%tl3670036767%_)
                                            (let ((_%e3670136770%_
                                                   (gx#syntax-e
                                                    _%tl3670036767%_)))
                                              (let ((_%tl3670336777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3670136770%_)))
                                                    (_%hd3670236774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3670136770%_))))
                                                (if (gx#stx-null?
                                                     _%tl3670336777%_)
                                                    (_%__kont3960339604%_
                                                     _%hd3670236774%_
                                                     _%hd3667936854%_
                                                     _%hd3657237257%_
                                                     _%hd3656937247%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656336709%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656336709%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656336709%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656336709%_)))))
                            (let () (declare (not safe)) (_%g3656336709%_))))))
                (let () (declare (not safe)) (_%g3656336709%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656336709%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656336709%_)))))))
                              (if (gx#stx-null? _%tl3657337260%_)
                                  (_%__kont3959739598%_
                                   _%hd3657237257%_
                                   _%hd3656937247%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656336709%_))))
                          (if (gx#stx-pair? _%tl3657337260%_)
                              (let ((_%e3663937019%_
                                     (gx#syntax-e _%tl3657337260%_)))
                                (let ((_%tl3664137026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3663937019%_)))
                                      (_%hd3664037023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3663937019%_))))
                                  (if (gx#stx-null? _%tl3664137026%_)
                                      (_%__kont3959539596%_
                                       _%hd3664037023%_
                                       _%hd3657237257%_)
                                      (if (gx#identifier? _%hd3664037023%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39957_|
                                               _%hd3664037023%_)
                                              (if (gx#stx-pair?
                                                   _%tl3664137026%_)
                                                  (let ((_%e3666236919%_
                                                         (gx#syntax-e
                                                          _%tl3664137026%_)))
                                                    (let ((_%tl3666436926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3666236919%_)))
                                                          (_%hd3666336923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3666236919%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3666436926%_)
                                                          (_%__kont3959939600%_
                                                           _%hd3666336923%_
                                                           _%hd3657237257%_
                                                           _%hd3656937247%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3656336709%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3656336709%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656336709%_)))
                                          (if (gx#stx-datum? _%hd3664037023%_)
                                              (let ((_%e3667736846%_
                                                     (gx#stx-e
                                                      _%hd3664037023%_)))
                                                (if (equal? _%e3667736846%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3664137026%_)
                                                        (let ((_%e3667836850%_
                                                               (gx#syntax-e
                                                                _%tl3664137026%_)))
                                                          (let ((_%tl3668036857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3667836850%_)))
                        (_%hd3667936854%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3667836850%_))))
                    (if (gx#stx-null? _%tl3668036857%_)
                        (_%__kont3960139602%_
                         _%hd3667936854%_
                         _%hd3657237257%_
                         _%hd3656937247%_)
                        (if (gx#stx-pair? _%tl3668036857%_)
                            (let ((_%e3669836760%_
                                   (gx#syntax-e _%tl3668036857%_)))
                              (let ((_%tl3670036767%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3669836760%_)))
                                    (_%hd3669936764%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3669836760%_))))
                                (if (gx#identifier? _%hd3669936764%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39958_|
                                         _%hd3669936764%_)
                                        (if (gx#stx-pair? _%tl3670036767%_)
                                            (let ((_%e3670136770%_
                                                   (gx#syntax-e
                                                    _%tl3670036767%_)))
                                              (let ((_%tl3670336777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3670136770%_)))
                                                    (_%hd3670236774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3670136770%_))))
                                                (if (gx#stx-null?
                                                     _%tl3670336777%_)
                                                    (_%__kont3960339604%_
                                                     _%hd3670236774%_
                                                     _%hd3667936854%_
                                                     _%hd3657237257%_
                                                     _%hd3656937247%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656336709%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656336709%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656336709%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656336709%_)))))
                            (let () (declare (not safe)) (_%g3656336709%_))))))
                (let () (declare (not safe)) (_%g3656336709%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656336709%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656336709%_)))))))
                              (if (gx#stx-null? _%tl3657337260%_)
                                  (_%__kont3959739598%_
                                   _%hd3657237257%_
                                   _%hd3656937247%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656336709%_)))))))
                  (if (gx#stx-pair? _%tl3657337260%_)
                      (let ((_%e3663937019%_ (gx#syntax-e _%tl3657337260%_)))
                        (let ((_%tl3664137026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3663937019%_)))
                              (_%hd3664037023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3663937019%_))))
                          (if (gx#stx-null? _%tl3664137026%_)
                              (_%__kont3959539596%_
                               _%hd3664037023%_
                               _%hd3657237257%_)
                              (if (gx#identifier? _%hd3664037023%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39957_|
                                       _%hd3664037023%_)
                                      (if (gx#stx-pair? _%tl3664137026%_)
                                          (let ((_%e3666236919%_
                                                 (gx#syntax-e
                                                  _%tl3664137026%_)))
                                            (let ((_%tl3666436926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3666236919%_)))
                                                  (_%hd3666336923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3666236919%_))))
                                              (if (gx#stx-null?
                                                   _%tl3666436926%_)
                                                  (_%__kont3959939600%_
                                                   _%hd3666336923%_
                                                   _%hd3657237257%_
                                                   _%hd3656937247%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3656336709%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656336709%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3656336709%_)))
                                  (if (gx#stx-datum? _%hd3664037023%_)
                                      (let ((_%e3667736846%_
                                             (gx#stx-e _%hd3664037023%_)))
                                        (if (equal? _%e3667736846%_ '::)
                                            (if (gx#stx-pair? _%tl3664137026%_)
                                                (let ((_%e3667836850%_
                                                       (gx#syntax-e
                                                        _%tl3664137026%_)))
                                                  (let ((_%tl3668036857%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3667836850%_)))
                                                        (_%hd3667936854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3667836850%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3668036857%_)
                                                        (_%__kont3960139602%_
                                                         _%hd3667936854%_
                                                         _%hd3657237257%_
                                                         _%hd3656937247%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3668036857%_)
                                                            (let ((_%e3669836760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3668036857%_)))
                      (let ((_%tl3670036767%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3669836760%_)))
                            (_%hd3669936764%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3669836760%_))))
                        (if (gx#identifier? _%hd3669936764%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39958_|
                                 _%hd3669936764%_)
                                (if (gx#stx-pair? _%tl3670036767%_)
                                    (let ((_%e3670136770%_
                                           (gx#syntax-e _%tl3670036767%_)))
                                      (let ((_%tl3670336777%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3670136770%_)))
                                            (_%hd3670236774%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3670136770%_))))
                                        (if (gx#stx-null? _%tl3670336777%_)
                                            (_%__kont3960339604%_
                                             _%hd3670236774%_
                                             _%hd3667936854%_
                                             _%hd3657237257%_
                                             _%hd3656937247%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656336709%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656336709%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656336709%_)))
                            (let () (declare (not safe)) (_%g3656336709%_)))))
                    (let () (declare (not safe)) (_%g3656336709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656336709%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656336709%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3656336709%_)))))))
                      (if (gx#stx-null? _%tl3657337260%_)
                          (_%__kont3959739598%_
                           _%hd3657237257%_
                           _%hd3656937247%_)
                          (let () (declare (not safe)) (_%g3656336709%_)))))
              (if (gx#stx-pair? _%tl3657337260%_)
                  (let ((_%e3663937019%_ (gx#syntax-e _%tl3657337260%_)))
                    (let ((_%tl3664137026%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3663937019%_)))
                          (_%hd3664037023%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3663937019%_))))
                      (if (gx#stx-null? _%tl3664137026%_)
                          (_%__kont3959539596%_
                           _%hd3664037023%_
                           _%hd3657237257%_)
                          (if (gx#identifier? _%hd3664037023%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39957_|
                                   _%hd3664037023%_)
                                  (if (gx#stx-pair? _%tl3664137026%_)
                                      (let ((_%e3666236919%_
                                             (gx#syntax-e _%tl3664137026%_)))
                                        (let ((_%tl3666436926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3666236919%_)))
                                              (_%hd3666336923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3666236919%_))))
                                          (if (gx#stx-null? _%tl3666436926%_)
                                              (_%__kont3959939600%_
                                               _%hd3666336923%_
                                               _%hd3657237257%_
                                               _%hd3656937247%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656336709%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3656336709%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656336709%_)))
                              (if (gx#stx-datum? _%hd3664037023%_)
                                  (let ((_%e3667736846%_
                                         (gx#stx-e _%hd3664037023%_)))
                                    (if (equal? _%e3667736846%_ '::)
                                        (if (gx#stx-pair? _%tl3664137026%_)
                                            (let ((_%e3667836850%_
                                                   (gx#syntax-e
                                                    _%tl3664137026%_)))
                                              (let ((_%tl3668036857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3667836850%_)))
                                                    (_%hd3667936854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3667836850%_))))
                                                (if (gx#stx-null?
                                                     _%tl3668036857%_)
                                                    (_%__kont3960139602%_
                                                     _%hd3667936854%_
                                                     _%hd3657237257%_
                                                     _%hd3656937247%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3668036857%_)
                                                        (let ((_%e3669836760%_
                                                               (gx#syntax-e
                                                                _%tl3668036857%_)))
                                                          (let ((_%tl3670036767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3669836760%_)))
                        (_%hd3669936764%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3669836760%_))))
                    (if (gx#identifier? _%hd3669936764%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39958_|
                             _%hd3669936764%_)
                            (if (gx#stx-pair? _%tl3670036767%_)
                                (let ((_%e3670136770%_
                                       (gx#syntax-e _%tl3670036767%_)))
                                  (let ((_%tl3670336777%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3670136770%_)))
                                        (_%hd3670236774%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3670136770%_))))
                                    (if (gx#stx-null? _%tl3670336777%_)
                                        (_%__kont3960339604%_
                                         _%hd3670236774%_
                                         _%hd3667936854%_
                                         _%hd3657237257%_
                                         _%hd3656937247%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656336709%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656336709%_)))
                            (let () (declare (not safe)) (_%g3656336709%_)))
                        (let () (declare (not safe)) (_%g3656336709%_)))))
                (let () (declare (not safe)) (_%g3656336709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656336709%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656336709%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656336709%_)))))))
                  (if (gx#stx-null? _%tl3657337260%_)
                      (_%__kont3959739598%_ _%hd3657237257%_ _%hd3656937247%_)
                      (let () (declare (not safe)) (_%g3656336709%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3657337260%_)
                                              (let ((_%e3663937019%_
                                                     (gx#syntax-e
                                                      _%tl3657337260%_)))
                                                (let ((_%tl3664137026%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3663937019%_)))
                                                      (_%hd3664037023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3663937019%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3664137026%_)
                                                      (_%__kont3959539596%_
                                                       _%hd3664037023%_
                                                       _%hd3657237257%_)
                                                      (if (gx#identifier?
                                                           _%hd3664037023%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39957_|
                                                               _%hd3664037023%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3664137026%_)
                          (let ((_%e3666236919%_
                                 (gx#syntax-e _%tl3664137026%_)))
                            (let ((_%tl3666436926%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3666236919%_)))
                                  (_%hd3666336923%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3666236919%_))))
                              (if (gx#stx-null? _%tl3666436926%_)
                                  (_%__kont3959939600%_
                                   _%hd3666336923%_
                                   _%hd3657237257%_
                                   _%hd3656937247%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656336709%_)))))
                          (let () (declare (not safe)) (_%g3656336709%_)))
                      (let () (declare (not safe)) (_%g3656336709%_)))
                  (if (gx#stx-datum? _%hd3664037023%_)
                      (let ((_%e3667736846%_ (gx#stx-e _%hd3664037023%_)))
                        (if (equal? _%e3667736846%_ '::)
                            (if (gx#stx-pair? _%tl3664137026%_)
                                (let ((_%e3667836850%_
                                       (gx#syntax-e _%tl3664137026%_)))
                                  (let ((_%tl3668036857%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3667836850%_)))
                                        (_%hd3667936854%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3667836850%_))))
                                    (if (gx#stx-null? _%tl3668036857%_)
                                        (_%__kont3960139602%_
                                         _%hd3667936854%_
                                         _%hd3657237257%_
                                         _%hd3656937247%_)
                                        (if (gx#stx-pair? _%tl3668036857%_)
                                            (let ((_%e3669836760%_
                                                   (gx#syntax-e
                                                    _%tl3668036857%_)))
                                              (let ((_%tl3670036767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3669836760%_)))
                                                    (_%hd3669936764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3669836760%_))))
                                                (if (gx#identifier?
                                                     _%hd3669936764%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39958_|
                                                         _%hd3669936764%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3670036767%_)
                                                            (let ((_%e3670136770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3670036767%_)))
                      (let ((_%tl3670336777%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3670136770%_)))
                            (_%hd3670236774%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3670136770%_))))
                        (if (gx#stx-null? _%tl3670336777%_)
                            (_%__kont3960339604%_
                             _%hd3670236774%_
                             _%hd3667936854%_
                             _%hd3657237257%_
                             _%hd3656937247%_)
                            (let () (declare (not safe)) (_%g3656336709%_)))))
                    (let () (declare (not safe)) (_%g3656336709%_)))
                (let () (declare (not safe)) (_%g3656336709%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656336709%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656336709%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656336709%_)))
                            (let () (declare (not safe)) (_%g3656336709%_))))
                      (let () (declare (not safe)) (_%g3656336709%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3657337260%_)
                                                  (_%__kont3959739598%_
                                                   _%hd3657237257%_
                                                   _%hd3656937247%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3656336709%_)))))))
                                  (if (gx#stx-pair? _%tl3657337260%_)
                                      (let ((_%e3663937019%_
                                             (gx#syntax-e _%tl3657337260%_)))
                                        (let ((_%tl3664137026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3663937019%_)))
                                              (_%hd3664037023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3663937019%_))))
                                          (if (gx#stx-null? _%tl3664137026%_)
                                              (_%__kont3959539596%_
                                               _%hd3664037023%_
                                               _%hd3657237257%_)
                                              (if (gx#identifier?
                                                   _%hd3664037023%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39957_|
                                                       _%hd3664037023%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3664137026%_)
                                                          (let ((_%e3666236919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3664137026%_)))
                    (let ((_%tl3666436926%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3666236919%_)))
                          (_%hd3666336923%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3666236919%_))))
                      (if (gx#stx-null? _%tl3666436926%_)
                          (_%__kont3959939600%_
                           _%hd3666336923%_
                           _%hd3657237257%_
                           _%hd3656937247%_)
                          (let () (declare (not safe)) (_%g3656336709%_)))))
                  (let () (declare (not safe)) (_%g3656336709%_)))
              (let () (declare (not safe)) (_%g3656336709%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3664037023%_)
                                                      (let ((_%e3667736846%_
                                                             (gx#stx-e
                                                              _%hd3664037023%_)))
                                                        (if (equal? _%e3667736846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3664137026%_)
                        (let ((_%e3667836850%_ (gx#syntax-e _%tl3664137026%_)))
                          (let ((_%tl3668036857%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3667836850%_)))
                                (_%hd3667936854%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3667836850%_))))
                            (if (gx#stx-null? _%tl3668036857%_)
                                (_%__kont3960139602%_
                                 _%hd3667936854%_
                                 _%hd3657237257%_
                                 _%hd3656937247%_)
                                (if (gx#stx-pair? _%tl3668036857%_)
                                    (let ((_%e3669836760%_
                                           (gx#syntax-e _%tl3668036857%_)))
                                      (let ((_%tl3670036767%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3669836760%_)))
                                            (_%hd3669936764%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3669836760%_))))
                                        (if (gx#identifier? _%hd3669936764%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39958_|
                                                 _%hd3669936764%_)
                                                (if (gx#stx-pair?
                                                     _%tl3670036767%_)
                                                    (let ((_%e3670136770%_
                                                           (gx#syntax-e
                                                            _%tl3670036767%_)))
                                                      (let ((_%tl3670336777%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3670136770%_)))
                    (_%hd3670236774%_
                     (let () (declare (not safe)) (##car _%e3670136770%_))))
                (if (gx#stx-null? _%tl3670336777%_)
                    (_%__kont3960339604%_
                     _%hd3670236774%_
                     _%hd3667936854%_
                     _%hd3657237257%_
                     _%hd3656937247%_)
                    (let () (declare (not safe)) (_%g3656336709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656336709%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656336709%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656336709%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656336709%_))))))
                        (let () (declare (not safe)) (_%g3656336709%_)))
                    (let () (declare (not safe)) (_%g3656336709%_))))
              (let () (declare (not safe)) (_%g3656336709%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3657337260%_)
                                          (_%__kont3959739598%_
                                           _%hd3657237257%_
                                           _%hd3656937247%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656336709%_)))))))
                          (let () (declare (not safe)) (_%g3656336709%_)))))
                  (let () (declare (not safe)) (_%g3656336709%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37352%_)
        (let* ((_%__stx3985039851%_ _%$stx37352%_)
               (_%g3735737391%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3985039851%_))))
          (let ((_%__kont3985339854%_
                 (lambda (_%L37495%_ _%L37497%_ _%L37498%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37498%_
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'make-match-macro)
                                           (cons 'macro:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        '$match-e)
                                       (cons _%L37497%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37495%_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'syntax-case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$stx)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (cons 'match:
                                               (gx#datum->syntax '#f 'body))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-apply-expander)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$match-e)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-wrap-source)
                               (cons (cons (gx#datum->syntax '#f 'syntax)
                                           (cons (gx#datum->syntax '#f 'body)
                                                 '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'stx-source)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$stx)
                                                       '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f '_)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'core-apply-expander)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$macro-e)
                         (cons (gx#datum->syntax '#f '$stx) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3985539856%_
                 (lambda (_%L37428%_ _%L37430%_ _%L37431%_)
                   (cons _%L37431%_
                         (cons _%L37430%_
                               (cons _%L37428%_
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$stx)
                                                             '())
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'raise-syntax-error)
                           (cons '#f
                                 (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                       (cons (gx#datum->syntax '#f '$stx)
                                             '()))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let ((_%__match3988339884%_
                   (lambda (_%e3736237455%_
                            _%hd3736337459%_
                            _%tl3736437462%_
                            _%e3736537465%_
                            _%hd3736637469%_
                            _%tl3736737472%_
                            _%e3736837475%_
                            _%hd3736937479%_
                            _%tl3737037482%_
                            _%e3737137485%_
                            _%hd3737237489%_
                            _%tl3737337492%_)
                     (let ((_%L37495%_ _%hd3737237489%_)
                           (_%L37497%_ _%hd3736937479%_)
                           (_%L37498%_ _%hd3736637469%_))
                       (if (gx#identifier? _%L37498%_)
                           (_%__kont3985339854%_
                            _%L37495%_
                            _%L37497%_
                            _%L37498%_)
                           (let () (declare (not safe)) (_%g3735737391%_)))))))
              (if (gx#stx-pair? _%__stx3985039851%_)
                  (let ((_%e3736237455%_ (gx#syntax-e _%__stx3985039851%_)))
                    (let ((_%tl3736437462%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3736237455%_)))
                          (_%hd3736337459%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3736237455%_))))
                      (if (gx#stx-pair? _%tl3736437462%_)
                          (let ((_%e3736537465%_
                                 (gx#syntax-e _%tl3736437462%_)))
                            (let ((_%tl3736737472%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3736537465%_)))
                                  (_%hd3736637469%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3736537465%_))))
                              (if (gx#stx-pair? _%tl3736737472%_)
                                  (let ((_%e3736837475%_
                                         (gx#syntax-e _%tl3736737472%_)))
                                    (let ((_%tl3737037482%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3736837475%_)))
                                          (_%hd3736937479%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3736837475%_))))
                                      (if (gx#stx-pair? _%tl3737037482%_)
                                          (let ((_%e3737137485%_
                                                 (gx#syntax-e
                                                  _%tl3737037482%_)))
                                            (let ((_%tl3737337492%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3737137485%_)))
                                                  (_%hd3737237489%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3737137485%_))))
                                              (if (gx#stx-null?
                                                   _%tl3737337492%_)
                                                  (_%__match3988339884%_
                                                   _%e3736237455%_
                                                   _%hd3736337459%_
                                                   _%tl3736437462%_
                                                   _%e3736537465%_
                                                   _%hd3736637469%_
                                                   _%tl3736737472%_
                                                   _%e3736837475%_
                                                   _%hd3736937479%_
                                                   _%tl3737037482%_
                                                   _%e3737137485%_
                                                   _%hd3737237489%_
                                                   _%tl3737337492%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3735737391%_)))))
                                          (if (gx#stx-null? _%tl3737037482%_)
                                              (_%__kont3985539856%_
                                               _%hd3736937479%_
                                               _%hd3736637469%_
                                               _%hd3736337459%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3735737391%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3735737391%_)))))
                          (let () (declare (not safe)) (_%g3735737391%_)))))
                  (let () (declare (not safe)) (_%g3735737391%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37520%_)
        (let* ((_%g3752437539%_
                (lambda (_%g3752537535%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3752537535%_)))
               (_%g3752337582%_
                (lambda (_%g3752537543%_)
                  (if (gx#stx-pair? _%g3752537543%_)
                      (let ((_%e3752837546%_ (gx#syntax-e _%g3752537543%_)))
                        (let ((_%hd3752937550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3752837546%_)))
                              (_%tl3753037553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3752837546%_))))
                          (if (gx#stx-pair? _%tl3753037553%_)
                              (let ((_%e3753137556%_
                                     (gx#syntax-e _%tl3753037553%_)))
                                (let ((_%hd3753237560%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3753137556%_)))
                                      (_%tl3753337563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3753137556%_))))
                                  ((lambda (_%L37566%_ _%L37568%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37568%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37566%_)
                                                       '()))))
                                   _%tl3753337563%_
                                   _%hd3753237560%_)))
                              (_%g3752437539%_ _%g3752537543%_))))
                      (_%g3752437539%_ _%g3752537543%_)))))
          (_%g3752337582%_ _%$stx37520%_))))))
