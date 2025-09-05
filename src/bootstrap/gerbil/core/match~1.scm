(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39849_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39850_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39851_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39852_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39853_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39854_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39855_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39856_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39857_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39858_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39859_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39860_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39861_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39862_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39863_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39876_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39884_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39885_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39886_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39891_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39892_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39893_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39894_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39895_|
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
      (lambda _%$args35148%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35148%_)))
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
      (lambda (_%stx35145%_)
        (if (gx#identifier? _%stx35145%_)
            (let ((__tmp39848 (gx#syntax-local-value _%stx35145%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39848))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33445%_ _%match-stx33447%_)
        (letrec ((_%parse133449%_
                  (lambda (_%hd33808%_)
                    (let* ((_%__stx3763637637%_ _%hd33808%_)
                           (_%g3383433976%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3763637637%_))))
                      (let ((_%__kont3763937640%_
                             (lambda (_%L34908%_ _%L34910%_)
                               (let* ((_%__stx3755637557%_ _%L34908%_)
                                      (_%g3492734960%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3755637557%_))))
                                 (let ((_%__kont3755937560%_
                                        (lambda ()
                                          (cons '?: (cons _%L34910%_ '()))))
                                       (_%__kont3756137562%_
                                        (lambda (_%L35101%_)
                                          (cons '?:
                                                (cons _%L34910%_
                                                      (cons (_%parse133449%_
                                                             _%L35101%_)
                                                            '())))))
                                       (_%__kont3756337564%_
                                        (lambda (_%L35071%_)
                                          (cons '?:
                                                (cons _%L34910%_
                                                      (cons '=>:
                                                            (cons (_%parse133449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L35071%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3756537566%_
                                        (lambda (_%L35022%_ _%L35024%_)
                                          (cons '?:
                                                (cons _%L34910%_
                                                      (cons '::
                                                            (cons _%L35024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133449%_ _%L35022%_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3756737568%_
                                        (lambda ()
                                          (_%parse-error33456%_ _%hd33808%_))))
                                   (let ((_%g3492335112%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3755637557%_)
                                                (let ((_%e3493035091%_
                                                       (gx#syntax-e
                                                        _%__stx3755637557%_)))
                                                  (let ((_%tl3493235098%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3493035091%_)))
                                                        (_%hd3493135095%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3493035091%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3493235098%_)
                                                        (_%__kont3756137562%_
                                                         _%hd3493135095%_)
                                                        (if (gx#identifier?
                                                             _%hd3493135095%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39849_|
                         _%hd3493135095%_)
                        (if (gx#stx-pair? _%tl3493235098%_)
                            (let ((_%e3493735061%_
                                   (gx#syntax-e _%tl3493235098%_)))
                              (let ((_%tl3493935068%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3493735061%_)))
                                    (_%hd3493835065%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3493735061%_))))
                                (if (gx#stx-null? _%tl3493935068%_)
                                    (_%__kont3756337564%_ _%hd3493835065%_)
                                    (_%__kont3756737568%_))))
                            (_%__kont3756737568%_))
                        (_%__kont3756737568%_))
                    (if (gx#stx-datum? _%hd3493135095%_)
                        (let ((_%e3494534988%_ (gx#stx-e _%hd3493135095%_)))
                          (if (equal? _%e3494534988%_ '::)
                              (if (gx#stx-pair? _%tl3493235098%_)
                                  (let ((_%e3494634992%_
                                         (gx#syntax-e _%tl3493235098%_)))
                                    (let ((_%tl3494834999%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3494634992%_)))
                                          (_%hd3494734996%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3494634992%_))))
                                      (if (gx#stx-pair? _%tl3494834999%_)
                                          (let ((_%e3494935002%_
                                                 (gx#syntax-e
                                                  _%tl3494834999%_)))
                                            (let ((_%tl3495135009%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3494935002%_)))
                                                  (_%hd3495035006%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3494935002%_))))
                                              (if (gx#identifier?
                                                   _%hd3495035006%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39850_|
                                                       _%hd3495035006%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3495135009%_)
                                                          (let ((_%e3495235012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3495135009%_)))
                    (let ((_%tl3495435019%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3495235012%_)))
                          (_%hd3495335016%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3495235012%_))))
                      (if (gx#stx-null? _%tl3495435019%_)
                          (_%__kont3756537566%_
                           _%hd3495335016%_
                           _%hd3494734996%_)
                          (_%__kont3756737568%_))))
                  (_%__kont3756737568%_))
              (_%__kont3756737568%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3756737568%_))))
                                          (_%__kont3756737568%_))))
                                  (_%__kont3756737568%_))
                              (_%__kont3756737568%_)))
                        (_%__kont3756737568%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3756737568%_)))))
                                     (if (gx#stx-null? _%__stx3755637557%_)
                                         (_%__kont3755937560%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3492335112%_))))))))
                            (_%__kont3764137642%_
                             (lambda (_%L34813%_)
                               (let* ((_%__stx3753837539%_ _%L34813%_)
                                      (_%g3482534836%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3753837539%_))))
                                 (let ((_%__kont3754137542%_
                                        (lambda (_%L34864%_)
                                          (_%parse133449%_ _%L34864%_)))
                                       (_%__kont3754337544%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133449%_
                                                 _%L34813%_)))))
                                   (if (gx#stx-pair? _%__stx3753837539%_)
                                       (let ((_%e3482834854%_
                                              (gx#syntax-e
                                               _%__stx3753837539%_)))
                                         (let ((_%tl3483034861%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3482834854%_)))
                                               (_%hd3482934858%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3482834854%_))))
                                           (if (gx#stx-null? _%tl3483034861%_)
                                               (_%__kont3754137542%_
                                                _%hd3482934858%_)
                                               (_%__kont3754337544%_))))
                                       (_%__kont3754337544%_))))))
                            (_%__kont3764337644%_
                             (lambda (_%L34728%_)
                               (let* ((_%__stx3752037521%_ _%L34728%_)
                                      (_%g3474034751%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3752037521%_))))
                                 (let ((_%__kont3752337524%_
                                        (lambda (_%L34779%_)
                                          (_%parse133449%_ _%L34779%_)))
                                       (_%__kont3752537526%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133449%_
                                                 _%L34728%_)))))
                                   (if (gx#stx-pair? _%__stx3752037521%_)
                                       (let ((_%e3474334769%_
                                              (gx#syntax-e
                                               _%__stx3752037521%_)))
                                         (let ((_%tl3474534776%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3474334769%_)))
                                               (_%hd3474434773%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3474334769%_))))
                                           (if (gx#stx-null? _%tl3474534776%_)
                                               (_%__kont3752337524%_
                                                _%hd3474434773%_)
                                               (_%__kont3752537526%_))))
                                       (_%__kont3752537526%_))))))
                            (_%__kont3764537646%_
                             (lambda (_%L34698%_)
                               (cons 'not:
                                     (cons (_%parse133449%_ _%L34698%_) '()))))
                            (_%__kont3764737648%_
                             (lambda (_%L34654%_ _%L34656%_)
                               (cons 'cons:
                                     (cons (_%parse133449%_ _%L34656%_)
                                           (cons (_%parse133449%_ _%L34654%_)
                                                 '())))))
                            (_%__kont3764937650%_
                             (lambda (_%L34598%_ _%L34600%_ _%L34601%_)
                               (if (gx#stx-null? _%L34598%_)
                                   (cons 'cons:
                                         (cons (_%parse133449%_ _%L34601%_)
                                               (cons (_%parse133449%_
                                                      _%L34600%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133449%_ _%L34601%_)
                                               (cons (_%parse133449%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%L34600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L34598%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3765137652%_
                             (lambda (_%L34550%_)
                               (_%parse-list33451%_ _%L34550%_)))
                            (_%__kont3765337654%_
                             (lambda (_%L34520%_)
                               (cons 'box:
                                     (cons (_%parse133449%_ _%L34520%_) '()))))
                            (_%__kont3765537656%_
                             (lambda (_%L34483%_)
                               (cons 'box:
                                     (cons (_%parse133449%_ _%L34483%_) '()))))
                            (_%__kont3765737658%_
                             (lambda (_%L34459%_)
                               (_%parse133449%_ _%L34459%_)))
                            (_%__kont3765937660%_
                             (lambda (_%L34421%_)
                               (cons 'values:
                                     (cons (_%parse-vector33452%_ _%L34421%_)
                                           '()))))
                            (_%__kont3766137662%_
                             (lambda (_%L34393%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33452%_ _%L34393%_)
                                           '()))))
                            (_%__kont3766337664%_
                             (lambda (_%L34354%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33452%_
                                            (foldr (lambda (_%g3436734370%_
                                                            _%g3436834373%_)
                                                     (cons _%g3436734370%_
                                                           _%g3436834373%_))
                                                   '()
                                                   _%L34354%_))
                                           '()))))
                            (_%__kont3766737668%_
                             (lambda (_%L34300%_ _%L34302%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L34302%_)
                                           (cons (_%parse-vector33452%_
                                                  _%L34300%_)
                                                 '())))))
                            (_%__kont3766937670%_
                             (lambda (_%L34270%_ _%L34272%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L34272%_)
                                           (cons (_%parse-class-body33454%_
                                                  _%L34270%_)
                                                 '())))))
                            (_%__kont3767137672%_
                             (lambda (_%L34230%_ _%L34232%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L34232%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L34230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3767337674%_
                             (lambda (_%L34190%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34190%_) '()))))
                            (_%__kont3767537676%_
                             (lambda (_%L34150%_)
                               (_%parse-qq33455%_ _%L34150%_)))
                            (_%__kont3767737678%_
                             (lambda (_%L34106%_ _%L34108%_)
                               (cons 'apply:
                                     (cons _%L34108%_
                                           (cons (_%parse133449%_ _%L34106%_)
                                                 '())))))
                            (_%__kont3767937680%_
                             (lambda (_%L34054%_)
                               (_%parse133449%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%L34054%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33808%_)
                                  (let ((_%$e34065%_
                                         (gx#stx-source _%hd33808%_)))
                                    (if _%$e34065%_
                                        _%$e34065%_
                                        (gx#stx-source _%stx33445%_))))))))
                            (_%__kont3768137682%_
                             (lambda (_%L34028%_) (cons 'any: '())))
                            (_%__kont3768337684%_
                             (lambda (_%L34012%_)
                               (cons 'var: (cons _%L34012%_ '()))))
                            (_%__kont3768537686%_
                             (lambda (_%L33994%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L33994%_) '()))))
                            (_%__kont3768737688%_
                             (lambda () (_%parse-error33456%_ _%hd33808%_))))
                        (let* ((_%g3383234005%_
                                (lambda ()
                                  (let ((_%L33994%_ _%__stx3763637637%_))
                                    (if (gx#stx-datum? _%L33994%_)
                                        (_%__kont3768537686%_ _%L33994%_)
                                        (_%__kont3768737688%_)))))
                               (_%g3383134021%_
                                (lambda ()
                                  (let ((_%L34012%_ _%__stx3763637637%_))
                                    (if (and (gx#identifier? _%L34012%_)
                                             (not (gx#ellipsis? _%L34012%_)))
                                        (_%__kont3768337684%_ _%L34012%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3383234005%_))))))
                               (_%g3383034037%_
                                (lambda ()
                                  (let ((_%L34028%_ _%__stx3763637637%_))
                                    (if (gx#underscore? _%L34028%_)
                                        (_%__kont3768137682%_ _%L34028%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3383134021%_))))))
                               (_%__match3796337964%_
                                (lambda (_%e3396534044%_
                                         _%hd3396634048%_
                                         _%tl3396734051%_)
                                  (let ((_%L34054%_ _%hd3396634048%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%L34054%_)
                                        (_%__kont3767937680%_ _%L34054%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3383034037%_))))))
                               (_%__match3789737898%_
                                (lambda (_%e3393334210%_
                                         _%hd3393434214%_
                                         _%tl3393534217%_
                                         _%e3393634220%_
                                         _%hd3393734224%_
                                         _%tl3393834227%_)
                                  (let ((_%L34230%_ _%hd3393734224%_)
                                        (_%L34232%_ _%hd3393434214%_))
                                    (if (and (gx#identifier? _%L34232%_)
                                             (or (gx#free-identifier=?
                                                  _%L34232%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L34232%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L34232%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3767137672%_
                                         _%L34230%_
                                         _%L34232%_)
                                        (if (gx#identifier? _%hd3393434214%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39851_|
                                                 _%hd3393434214%_)
                                                (_%__kont3767337674%_
                                                 _%hd3393734224%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39852_|
                                                     _%hd3393434214%_)
                                                    (_%__kont3767537676%_
                                                     _%hd3393734224%_)
                                                    (_%__match3796337964%_
                                                     _%e3393334210%_
                                                     _%hd3393434214%_
                                                     _%tl3393534217%_)))
                                            (_%__match3796337964%_
                                             _%e3393334210%_
                                             _%hd3393434214%_
                                             _%tl3393534217%_))))))
                               (_%__match3788337884%_
                                (lambda (_%e3392834260%_
                                         _%hd3392934264%_
                                         _%tl3393034267%_)
                                  (let ((_%L34270%_ _%tl3393034267%_)
                                        (_%L34272%_ _%hd3392934264%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L34272%_))
                                        (_%__kont3766937670%_
                                         _%L34270%_
                                         _%L34272%_)
                                        (if (gx#stx-pair? _%tl3393034267%_)
                                            (let ((_%e3393634220%_
                                                   (gx#syntax-e
                                                    _%tl3393034267%_)))
                                              (let ((_%tl3393834227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3393634220%_)))
                                                    (_%hd3393734224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3393634220%_))))
                                                (if (gx#stx-null?
                                                     _%tl3393834227%_)
                                                    (_%__match3789737898%_
                                                     _%e3392834260%_
                                                     _%hd3392934264%_
                                                     _%tl3393034267%_
                                                     _%e3393634220%_
                                                     _%hd3393734224%_
                                                     _%tl3393834227%_)
                                                    (if (gx#identifier?
                                                         _%hd3392934264%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39851_|
                                                             _%hd3392934264%_)
                                                            (_%__match3796337964%_
                                                             _%e3392834260%_
                                                             _%hd3392934264%_
                                                             _%tl3393034267%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39852_|
                         _%hd3392934264%_)
                        (_%__match3796337964%_
                         _%e3392834260%_
                         _%hd3392934264%_
                         _%tl3393034267%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39853_|
                             _%hd3392934264%_)
                            (if (gx#stx-pair? _%tl3393834227%_)
                                (let ((_%e3396134096%_
                                       (gx#syntax-e _%tl3393834227%_)))
                                  (let ((_%tl3396334103%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3396134096%_)))
                                        (_%hd3396234100%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3396134096%_))))
                                    (if (gx#stx-null? _%tl3396334103%_)
                                        (_%__kont3767737678%_
                                         _%hd3396234100%_
                                         _%hd3393734224%_)
                                        (_%__match3796337964%_
                                         _%e3392834260%_
                                         _%hd3392934264%_
                                         _%tl3393034267%_))))
                                (_%__match3796337964%_
                                 _%e3392834260%_
                                 _%hd3392934264%_
                                 _%tl3393034267%_))
                            (_%__match3796337964%_
                             _%e3392834260%_
                             _%hd3392934264%_
                             _%tl3393034267%_))))
                (_%__match3796337964%_
                 _%e3392834260%_
                 _%hd3392934264%_
                 _%tl3393034267%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3796337964%_
                                             _%e3392834260%_
                                             _%hd3392934264%_
                                             _%tl3393034267%_))))))
                               (_%__match3787737878%_
                                (lambda (_%e3392334290%_
                                         _%hd3392434294%_
                                         _%tl3392534297%_)
                                  (let ((_%L34300%_ _%tl3392534297%_)
                                        (_%L34302%_ _%hd3392434294%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L34302%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3766737668%_
                                         _%L34300%_
                                         _%L34302%_)
                                        (_%__match3788337884%_
                                         _%e3392334290%_
                                         _%hd3392434294%_
                                         _%tl3392534297%_)))))
                               (_%__match3787137872%_
                                (lambda (_%e3391134320%_
                                         _%__splice3766537666%_
                                         _%target3391234324%_
                                         _%tl3391434327%_)
                                  (letrec ((_%loop3391534330%_
                                            (lambda (_%hd3391334334%_
                                                     _%body3391934337%_)
                                              (if (gx#stx-pair?
                                                   _%hd3391334334%_)
                                                  (let ((_%e3391634340%_
                                                         (gx#syntax-e
                                                          _%hd3391334334%_)))
                                                    (let ((_%lp-tl3391834347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3391634340%_)))
                                                          (_%lp-hd3391734344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3391634340%_))))
                                                      (_%loop3391534330%_
                                                       _%lp-tl3391834347%_
                                                       (cons _%lp-hd3391734344%_
                                                             _%body3391934337%_))))
                                                  (let ((_%body3392034350%_
                                                         (reverse _%body3391934337%_)))
                                                    (_%__kont3766337664%_
                                                     _%body3392034350%_))))))
                                    (_%loop3391534330%_
                                     _%target3391234324%_
                                     '()))))
                               (_%g3382234376%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3763637637%_)
                                      (let ((_%e3391134320%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3763637637%_))))
                                        (if (gx#stx-pair/null? _%e3391134320%_)
                                            (let ((_%__splice3766537666%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3391134320%_
                                                    '0)))
                                              (let ((_%tl3391434327%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3766537666%_
                                                        '1)))
                                                    (_%target3391234324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3766537666%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3391434327%_)
                                                    (_%__match3787137872%_
                                                     _%e3391134320%_
                                                     _%__splice3766537666%_
                                                     _%target3391234324%_
                                                     _%tl3391434327%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3383034037%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3383034037%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3383034037%_)))))
                               (_%g3381834493%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3763637637%_)
                                      (let ((_%e3389434479%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3763637637%_))))
                                        (_%__kont3765537656%_ _%e3389434479%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3382234376%_)))))
                               (_%__match3772537726%_
                                (lambda (_%e3384934718%_
                                         _%hd3385034722%_
                                         _%tl3385134725%_)
                                  (let ((_%L34728%_ _%tl3385134725%_))
                                    (if (gx#stx-list? _%L34728%_)
                                        (_%__kont3764337644%_ _%L34728%_)
                                        (_%__match3787737878%_
                                         _%e3384934718%_
                                         _%hd3385034722%_
                                         _%tl3385134725%_)))))
                               (_%__match3771537716%_
                                (lambda (_%e3384534803%_
                                         _%hd3384634807%_
                                         _%tl3384734810%_)
                                  (let ((_%L34813%_ _%tl3384734810%_))
                                    (if (gx#stx-list? _%L34813%_)
                                        (_%__kont3764137642%_ _%L34813%_)
                                        (_%__match3787737878%_
                                         _%e3384534803%_
                                         _%hd3384634807%_
                                         _%tl3384734810%_))))))
                          (if (gx#stx-pair? _%__stx3763637637%_)
                              (let ((_%e3383834888%_
                                     (gx#syntax-e _%__stx3763637637%_)))
                                (let ((_%tl3384034895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3383834888%_)))
                                      (_%hd3383934892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3383834888%_))))
                                  (if (gx#identifier? _%hd3383934892%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39854_|
                                           _%hd3383934892%_)
                                          (if (gx#stx-pair? _%tl3384034895%_)
                                              (let ((_%e3384134898%_
                                                     (gx#syntax-e
                                                      _%tl3384034895%_)))
                                                (let ((_%tl3384334905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3384134898%_)))
                                                      (_%hd3384234902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3384134898%_))))
                                                  (_%__kont3763937640%_
                                                   _%tl3384334905%_
                                                   _%hd3384234902%_)))
                                              (_%__match3787737878%_
                                               _%e3383834888%_
                                               _%hd3383934892%_
                                               _%tl3384034895%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39855_|
                                               _%hd3383934892%_)
                                              (_%__match3771537716%_
                                               _%e3383834888%_
                                               _%hd3383934892%_
                                               _%tl3384034895%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39856_|
                                                   _%hd3383934892%_)
                                                  (_%__match3772537726%_
                                                   _%e3383834888%_
                                                   _%hd3383934892%_
                                                   _%tl3384034895%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39857_|
                                                       _%hd3383934892%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3384034895%_)
                                                          (let ((_%e3385634688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3384034895%_)))
                    (let ((_%tl3385834695%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3385634688%_)))
                          (_%hd3385734692%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3385634688%_))))
                      (if (gx#stx-null? _%tl3385834695%_)
                          (_%__kont3764537646%_ _%hd3385734692%_)
                          (_%__match3787737878%_
                           _%e3383834888%_
                           _%hd3383934892%_
                           _%tl3384034895%_))))
                  (_%__match3787737878%_
                   _%e3383834888%_
                   _%hd3383934892%_
                   _%tl3384034895%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39858_|
                   _%hd3383934892%_)
                  (if (gx#stx-pair? _%tl3384034895%_)
                      (let ((_%e3386434634%_ (gx#syntax-e _%tl3384034895%_)))
                        (let ((_%tl3386634641%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3386434634%_)))
                              (_%hd3386534638%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3386434634%_))))
                          (if (gx#stx-pair? _%tl3386634641%_)
                              (let ((_%e3386734644%_
                                     (gx#syntax-e _%tl3386634641%_)))
                                (let ((_%tl3386934651%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3386734644%_)))
                                      (_%hd3386834648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3386734644%_))))
                                  (if (gx#stx-null? _%tl3386934651%_)
                                      (_%__kont3764737648%_
                                       _%hd3386834648%_
                                       _%hd3386534638%_)
                                      (_%__match3787737878%_
                                       _%e3383834888%_
                                       _%hd3383934892%_
                                       _%tl3384034895%_))))
                              (_%__match3787737878%_
                               _%e3383834888%_
                               _%hd3383934892%_
                               _%tl3384034895%_))))
                      (_%__match3787737878%_
                       _%e3383834888%_
                       _%hd3383934892%_
                       _%tl3384034895%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39859_|
                       _%hd3383934892%_)
                      (if (gx#stx-pair? _%tl3384034895%_)
                          (let ((_%e3387634578%_
                                 (gx#syntax-e _%tl3384034895%_)))
                            (let ((_%tl3387834585%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3387634578%_)))
                                  (_%hd3387734582%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3387634578%_))))
                              (if (gx#stx-pair? _%tl3387834585%_)
                                  (let ((_%e3387934588%_
                                         (gx#syntax-e _%tl3387834585%_)))
                                    (let ((_%tl3388134595%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3387934588%_)))
                                          (_%hd3388034592%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3387934588%_))))
                                      (_%__kont3764937650%_
                                       _%tl3388134595%_
                                       _%hd3388034592%_
                                       _%hd3387734582%_)))
                                  (_%__match3787737878%_
                                   _%e3383834888%_
                                   _%hd3383934892%_
                                   _%tl3384034895%_))))
                          (_%__match3787737878%_
                           _%e3383834888%_
                           _%hd3383934892%_
                           _%tl3384034895%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39860_|
                           _%hd3383934892%_)
                          (_%__kont3765137652%_ _%tl3384034895%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39861_|
                               _%hd3383934892%_)
                              (if (gx#stx-pair? _%tl3384034895%_)
                                  (let ((_%e3389034510%_
                                         (gx#syntax-e _%tl3384034895%_)))
                                    (let ((_%tl3389234517%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3389034510%_)))
                                          (_%hd3389134514%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3389034510%_))))
                                      (if (gx#stx-null? _%tl3389234517%_)
                                          (_%__kont3765337654%_
                                           _%hd3389134514%_)
                                          (_%__match3787737878%_
                                           _%e3383834888%_
                                           _%hd3383934892%_
                                           _%tl3384034895%_))))
                                  (_%__match3787737878%_
                                   _%e3383834888%_
                                   _%hd3383934892%_
                                   _%tl3384034895%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39862_|
                                   _%hd3383934892%_)
                                  (if (gx#stx-pair? _%tl3384034895%_)
                                      (let ((_%e3389934449%_
                                             (gx#syntax-e _%tl3384034895%_)))
                                        (let ((_%tl3390134456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3389934449%_)))
                                              (_%hd3390034453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3389934449%_))))
                                          (if (gx#stx-null? _%tl3390134456%_)
                                              (_%__kont3765737658%_
                                               _%hd3390034453%_)
                                              (_%__kont3765937660%_
                                               _%tl3384034895%_))))
                                      (_%__kont3765937660%_ _%tl3384034895%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39863_|
                                       _%hd3383934892%_)
                                      (_%__kont3766137662%_ _%tl3384034895%_)
                                      (_%__match3787737878%_
                                       _%e3383834888%_
                                       _%hd3383934892%_
                                       _%tl3384034895%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3787737878%_
                                       _%e3383834888%_
                                       _%hd3383934892%_
                                       _%tl3384034895%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3381834493%_))))))))
                 (_%parse-list33451%_
                  (lambda (_%body33631%_)
                    (let* ((_%__stx3796637967%_ _%body33631%_)
                           (_%g3363733666%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3796637967%_))))
                      (let ((_%__kont3796937970%_
                             (lambda (_%L33790%_)
                               (_%parse133449%_ _%L33790%_)))
                            (_%__kont3797137972%_
                             (lambda (_%L33742%_ _%L33744%_ _%L33745%_)
                               (cons 'splice:
                                     (cons (_%parse133449%_ _%L33745%_)
                                           (cons (_%parse-list33451%_
                                                  _%L33742%_)
                                                 '())))))
                            (_%__kont3797337974%_
                             (lambda (_%L33700%_ _%L33702%_)
                               (cons 'cons:
                                     (cons (_%parse133449%_ _%L33702%_)
                                           (cons (_%parse-list33451%_
                                                  _%L33700%_)
                                                 '())))))
                            (_%__kont3797537976%_
                             (lambda ()
                               (if (gx#stx-null? _%body33631%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33631%_)
                                       (_%parse-error33456%_ _%body33631%_)
                                       (_%parse133449%_ _%body33631%_))))))
                        (let* ((_%__match3801538016%_
                                (lambda (_%e3365833690%_
                                         _%hd3365933694%_
                                         _%tl3366033697%_)
                                  (let ((_%L33700%_ _%tl3366033697%_)
                                        (_%L33702%_ _%hd3365933694%_))
                                    (if (gx#ellipsis? _%L33702%_)
                                        (_%__kont3797537976%_)
                                        (_%__kont3797337974%_
                                         _%L33700%_
                                         _%L33702%_)))))
                               (_%__match3800938010%_
                                (lambda (_%e3365033722%_
                                         _%hd3365133726%_
                                         _%tl3365233729%_
                                         _%e3365333732%_
                                         _%hd3365433736%_
                                         _%tl3365533739%_)
                                  (let ((_%L33742%_ _%tl3365533739%_)
                                        (_%L33744%_ _%hd3365433736%_)
                                        (_%L33745%_ _%hd3365133726%_))
                                    (if (gx#ellipsis? _%L33744%_)
                                        (_%__kont3797137972%_
                                         _%L33742%_
                                         _%L33744%_
                                         _%L33745%_)
                                        (_%__match3801538016%_
                                         _%e3365033722%_
                                         _%hd3365133726%_
                                         _%tl3365233729%_))))))
                          (if (gx#stx-pair? _%__stx3796637967%_)
                              (let ((_%e3364033766%_
                                     (gx#syntax-e _%__stx3796637967%_)))
                                (let ((_%tl3364233773%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3364033766%_)))
                                      (_%hd3364133770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3364033766%_))))
                                  (if (gx#stx-datum? _%hd3364133770%_)
                                      (let ((_%e3364333776%_
                                             (gx#stx-e _%hd3364133770%_)))
                                        (if (equal? _%e3364333776%_ '::)
                                            (if (gx#stx-pair? _%tl3364233773%_)
                                                (let ((_%e3364433780%_
                                                       (gx#syntax-e
                                                        _%tl3364233773%_)))
                                                  (let ((_%tl3364633787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3364433780%_)))
                                                        (_%hd3364533784%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3364433780%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3364633787%_)
                                                        (_%__kont3796937970%_
                                                         _%hd3364533784%_)
                                                        (_%__match3800938010%_
                                                         _%e3364033766%_
                                                         _%hd3364133770%_
                                                         _%tl3364233773%_
                                                         _%e3364433780%_
                                                         _%hd3364533784%_
                                                         _%tl3364633787%_))))
                                                (_%__match3801538016%_
                                                 _%e3364033766%_
                                                 _%hd3364133770%_
                                                 _%tl3364233773%_))
                                            (if (gx#stx-pair? _%tl3364233773%_)
                                                (let ((_%e3365333732%_
                                                       (gx#syntax-e
                                                        _%tl3364233773%_)))
                                                  (let ((_%tl3365533739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3365333732%_)))
                                                        (_%hd3365433736%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3365333732%_))))
                                                    (_%__match3800938010%_
                                                     _%e3364033766%_
                                                     _%hd3364133770%_
                                                     _%tl3364233773%_
                                                     _%e3365333732%_
                                                     _%hd3365433736%_
                                                     _%tl3365533739%_)))
                                                (_%__match3801538016%_
                                                 _%e3364033766%_
                                                 _%hd3364133770%_
                                                 _%tl3364233773%_))))
                                      (if (gx#stx-pair? _%tl3364233773%_)
                                          (let ((_%e3365333732%_
                                                 (gx#syntax-e
                                                  _%tl3364233773%_)))
                                            (let ((_%tl3365533739%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3365333732%_)))
                                                  (_%hd3365433736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3365333732%_))))
                                              (_%__match3800938010%_
                                               _%e3364033766%_
                                               _%hd3364133770%_
                                               _%tl3364233773%_
                                               _%e3365333732%_
                                               _%hd3365433736%_
                                               _%tl3365533739%_)))
                                          (_%__match3801538016%_
                                           _%e3364033766%_
                                           _%hd3364133770%_
                                           _%tl3364233773%_)))))
                              (_%__kont3797537976%_)))))))
                 (_%parse-vector33452%_
                  (lambda (_%body33628%_)
                    (if (_%simple-vector?33453%_ _%body33628%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133449%_ _%body33628%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33451%_ _%body33628%_)
                                    '())))))
                 (_%simple-vector?33453%_
                  (lambda (_%body33565%_)
                    (let* ((_%__stx3801838019%_ _%body33565%_)
                           (_%g3356933581%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3801838019%_))))
                      (let ((_%__kont3802138022%_
                             (lambda (_%L33609%_ _%L33611%_)
                               (if (gx#ellipsis? _%L33611%_)
                                   '#f
                                   (_%simple-vector?33453%_ _%L33609%_))))
                            (_%__kont3802338024%_
                             (lambda () (gx#stx-null? _%body33565%_))))
                        (if (gx#stx-pair? _%__stx3801838019%_)
                            (let ((_%e3357333599%_
                                   (gx#syntax-e _%__stx3801838019%_)))
                              (let ((_%tl3357533606%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3357333599%_)))
                                    (_%hd3357433603%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3357333599%_))))
                                (_%__kont3802138022%_
                                 _%tl3357533606%_
                                 _%hd3357433603%_)))
                            (_%__kont3802338024%_))))))
                 (_%parse-class-body33454%_
                  (lambda (_%body33474%_)
                    (let _%recur33477%_ ((_%rest33480%_ _%body33474%_))
                      (let* ((_%__stx3803438035%_ _%rest33480%_)
                             (_%g3348433500%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3803438035%_))))
                        (let ((_%__kont3803738038%_
                               (lambda (_%L33538%_ _%L33540%_ _%L33541%_)
                                 (cons _%L33541%_
                                       (cons (_%parse133449%_ _%L33540%_)
                                             (_%recur33477%_ _%L33538%_)))))
                              (_%__kont3803938040%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33480%_)
                                     '()
                                     (_%parse-error33456%_ _%rest33480%_)))))
                          (let ((_%__match3805338054%_
                                 (lambda (_%e3348933518%_
                                          _%hd3349033522%_
                                          _%tl3349133525%_
                                          _%e3349233528%_
                                          _%hd3349333532%_
                                          _%tl3349433535%_)
                                   (let ((_%L33538%_ _%tl3349433535%_)
                                         (_%L33540%_ _%hd3349333532%_)
                                         (_%L33541%_ _%hd3349033522%_))
                                     (if (gx#stx-keyword? _%L33541%_)
                                         (_%__kont3803738038%_
                                          _%L33538%_
                                          _%L33540%_
                                          _%L33541%_)
                                         (_%__kont3803938040%_))))))
                            (if (gx#stx-pair? _%__stx3803438035%_)
                                (let ((_%e3348933518%_
                                       (gx#syntax-e _%__stx3803438035%_)))
                                  (let ((_%tl3349133525%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3348933518%_)))
                                        (_%hd3349033522%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3348933518%_))))
                                    (if (gx#stx-pair? _%tl3349133525%_)
                                        (let ((_%e3349233528%_
                                               (gx#syntax-e _%tl3349133525%_)))
                                          (let ((_%tl3349433535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3349233528%_)))
                                                (_%hd3349333532%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3349233528%_))))
                                            (_%__match3805338054%_
                                             _%e3348933518%_
                                             _%hd3349033522%_
                                             _%tl3349133525%_
                                             _%e3349233528%_
                                             _%hd3349333532%_
                                             _%tl3349433535%_)))
                                        (_%__kont3803938040%_))))
                                (_%__kont3803938040%_))))))))
                 (_%parse-qq33455%_
                  (lambda (_%hd33461%_)
                    (let ((_%g3346333470%_
                           (lambda (_%g3346433466%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3346433466%_))))
                      (_%g3346333470%_ _%hd33461%_))))
                 (_%parse-error33456%_
                  (lambda (_%hd33458%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33447%_
                               (cons _%match-stx33447%_
                                     (cons _%stx33445%_
                                           (cons _%hd33458%_ '())))
                               (cons _%stx33445%_ (cons _%hd33458%_ '())))))))
          (_%parse133449%_ _%stx33445%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35135%_)
        (let ((_%match-stx35138%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35135%_
           _%match-stx35138%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39864_
        (let ((_g39865_ (let () (declare (not safe)) (##length _g39864_))))
          (cond ((let () (declare (not safe)) (##fx= _g39865_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39864_))
                ((let () (declare (not safe)) (##fx= _g39865_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39864_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33430%_)
        (let ((__tmp39866
               (lambda (_%E33433%_)
                 (with-exception-handler
                  (let ((_%E!33436%_ (current-exception-handler)))
                    (lambda (_%e33439%_)
                      (if (syntax-error? _%e33439%_)
                          (_%E33433%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33436%_ _%e33439%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33430%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39866))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32165%_)
        (letrec ((_%loop32168%_
                  (lambda (_%ptree32455%_ _%vars32457%_ _%K32458%_)
                    (let* ((_%__stx3815238153%_ _%ptree32455%_)
                           (_%g3247132581%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3815238153%_))))
                      (let ((_%__kont3815538156%_
                             (lambda (_%L33211%_)
                               (let* ((_%__stx3807238073%_ _%L33211%_)
                                      (_%g3322833262%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3807238073%_))))
                                 (let ((_%__kont3807538076%_
                                        (lambda (_%L33411%_)
                                          (_%loop32168%_
                                           _%L33411%_
                                           _%vars32457%_
                                           _%K32458%_)))
                                       (_%__kont3807738078%_
                                        (lambda (_%L33380%_)
                                          (_%loop32168%_
                                           _%L33380%_
                                           _%vars32457%_
                                           _%K32458%_)))
                                       (_%__kont3807938080%_
                                        (lambda (_%L33328%_)
                                          (_%loop32168%_
                                           _%L33328%_
                                           _%vars32457%_
                                           _%K32458%_)))
                                       (_%__kont3808138082%_
                                        (lambda ()
                                          (_%K32458%_ _%vars32457%_))))
                                   (if (gx#stx-pair? _%__stx3807238073%_)
                                       (let ((_%e3323133401%_
                                              (gx#syntax-e
                                               _%__stx3807238073%_)))
                                         (let ((_%tl3323333408%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3323133401%_)))
                                               (_%hd3323233405%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3323133401%_))))
                                           (if (gx#stx-null? _%tl3323333408%_)
                                               (_%__kont3807538076%_
                                                _%hd3323233405%_)
                                               (if (gx#stx-datum?
                                                    _%hd3323233405%_)
                                                   (let ((_%e3323833366%_
                                                          (gx#stx-e
                                                           _%hd3323233405%_)))
                                                     (if (equal? _%e3323833366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3323333408%_)
                     (let ((_%e3323933370%_ (gx#syntax-e _%tl3323333408%_)))
                       (let ((_%tl3324133377%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3323933370%_)))
                             (_%hd3324033374%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3323933370%_))))
                         (if (gx#stx-null? _%tl3324133377%_)
                             (_%__kont3807738078%_ _%hd3324033374%_)
                             (_%__kont3808138082%_))))
                     (_%__kont3808138082%_))
                 (if (equal? _%e3323833366%_ '::)
                     (if (gx#stx-pair? _%tl3323333408%_)
                         (let ((_%e3324733294%_
                                (gx#syntax-e _%tl3323333408%_)))
                           (let ((_%tl3324933301%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3324733294%_)))
                                 (_%hd3324833298%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3324733294%_))))
                             (if (gx#stx-pair? _%tl3324933301%_)
                                 (let ((_%e3325033304%_
                                        (gx#syntax-e _%tl3324933301%_)))
                                   (let ((_%tl3325233311%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3325033304%_)))
                                         (_%hd3325133308%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3325033304%_))))
                                     (if (gx#stx-datum? _%hd3325133308%_)
                                         (let ((_%e3325333314%_
                                                (gx#stx-e _%hd3325133308%_)))
                                           (if (equal? _%e3325333314%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3325233311%_)
                                                   (let ((_%e3325433318%_
                                                          (gx#syntax-e
                                                           _%tl3325233311%_)))
                                                     (let ((_%tl3325633325%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3325433318%_)))
                                                           (_%hd3325533322%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3325433318%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3325633325%_)
                                                           (_%__kont3807938080%_
                                                            _%hd3325533322%_)
                                                           (_%__kont3808138082%_))))
                                                   (_%__kont3808138082%_))
                                               (_%__kont3808138082%_)))
                                         (_%__kont3808138082%_))))
                                 (_%__kont3808138082%_))))
                         (_%__kont3808138082%_))
                     (_%__kont3808138082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3808138082%_)))))
                                       (_%__kont3808138082%_))))))
                            (_%__kont3815738158%_
                             (lambda (_%L33098%_ _%L33100%_)
                               (let* ((_%__stx3805638057%_ _%L33098%_)
                                      (_%g3311633128%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3805638057%_))))
                                 (let ((_%__kont3805938060%_
                                        (lambda (_%L33156%_ _%L33158%_)
                                          (_%loop32168%_
                                           _%L33158%_
                                           _%vars32457%_
                                           (lambda (_%g3317033172%_)
                                             (_%loop32168%_
                                              (cons _%L33100%_ _%L33156%_)
                                              _%g3317033172%_
                                              _%K32458%_)))))
                                       (_%__kont3806138062%_
                                        (lambda ()
                                          (_%K32458%_ _%vars32457%_))))
                                   (if (gx#stx-pair? _%__stx3805638057%_)
                                       (let ((_%e3312033146%_
                                              (gx#syntax-e
                                               _%__stx3805638057%_)))
                                         (let ((_%tl3312233153%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3312033146%_)))
                                               (_%hd3312133150%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3312033146%_))))
                                           (_%__kont3805938060%_
                                            _%tl3312233153%_
                                            _%hd3312133150%_)))
                                       (_%__kont3806138062%_))))))
                            (_%__kont3815938160%_
                             (lambda (_%L33067%_)
                               (_%loop32168%_
                                _%L33067%_
                                _%vars32457%_
                                _%K32458%_)))
                            (_%__kont3816138162%_
                             (lambda (_%L33013%_ _%L33015%_)
                               (_%loop32168%_
                                _%L33015%_
                                _%vars32457%_
                                (lambda (_%g3303033032%_)
                                  (_%loop32168%_
                                   _%L33013%_
                                   _%g3303033032%_
                                   _%K32458%_)))))
                            (_%__kont3816338164%_
                             (lambda (_%L32949%_ _%L32951%_)
                               (_%loop32168%_
                                _%L32951%_
                                _%vars32457%_
                                (lambda (_%g3296632968%_)
                                  (_%loop32168%_
                                   _%L32949%_
                                   _%g3296632968%_
                                   _%K32458%_)))))
                            (_%__kont3816538166%_
                             (lambda (_%L32894%_)
                               (_%loop32168%_
                                _%L32894%_
                                _%vars32457%_
                                _%K32458%_)))
                            (_%__kont3816738168%_
                             (lambda (_%L32844%_ _%L32846%_)
                               (_%loop-vector32170%_
                                _%L32844%_
                                _%vars32457%_
                                _%K32458%_)))
                            (_%__kont3816938170%_
                             (lambda (_%L32801%_)
                               (_%loop-vector32170%_
                                _%L32801%_
                                _%vars32457%_
                                _%K32458%_)))
                            (_%__kont3817138172%_
                             (lambda (_%L32744%_)
                               (_%loop-class-list32172%_
                                _%L32744%_
                                _%vars32457%_
                                _%K32458%_)))
                            (_%__kont3817338174%_
                             (lambda (_%L32685%_ _%L32687%_)
                               (_%loop32168%_
                                _%L32685%_
                                _%vars32457%_
                                _%K32458%_)))
                            (_%__kont3817538176%_
                             (lambda (_%L32623%_)
                               (if (find (lambda (_%g3263832640%_)
                                           (gx#bound-identifier=?
                                            _%g3263832640%_
                                            _%L32623%_))
                                         _%vars32457%_)
                                   (_%K32458%_ _%vars32457%_)
                                   (_%K32458%_
                                    (cons _%L32623%_ _%vars32457%_)))))
                            (_%__kont3817738178%_
                             (lambda () (_%K32458%_ _%vars32457%_))))
                        (let* ((_%__match3830938310%_
                                (lambda (_%e3252832824%_
                                         _%hd3252932828%_
                                         _%tl3253032831%_
                                         _%e3253132834%_
                                         _%hd3253232838%_
                                         _%tl3253332841%_)
                                  (let ((_%L32844%_ _%hd3253232838%_)
                                        (_%L32846%_ _%hd3252932828%_))
                                    (if (or (gx#stx-eq? 'values: _%L32846%_)
                                            (gx#stx-eq? 'vector: _%L32846%_))
                                        (_%__kont3816738168%_
                                         _%L32844%_
                                         _%L32846%_)
                                        (if (gx#stx-datum? _%hd3252932828%_)
                                            (let ((_%e3253832777%_
                                                   (gx#stx-e
                                                    _%hd3252932828%_)))
                                              (if (equal? _%e3253832777%_
                                                          'struct:)
                                                  (_%__kont3817738178%_)
                                                  (if (equal? _%e3253832777%_
                                                              'class:)
                                                      (_%__kont3817738178%_)
                                                      (if (equal? _%e3253832777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3817738178%_)
                  (if (equal? _%e3253832777%_ 'var:)
                      (_%__kont3817538176%_ _%hd3253232838%_)
                      (_%__kont3817738178%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3817738178%_))))))
                               (_%__match3820338204%_
                                (lambda (_%e3248333088%_
                                         _%hd3248433092%_
                                         _%tl3248533095%_)
                                  (let ((_%L33098%_ _%tl3248533095%_)
                                        (_%L33100%_ _%hd3248433092%_))
                                    (if (or (gx#stx-eq? 'and: _%L33100%_)
                                            (gx#stx-eq? 'or: _%L33100%_))
                                        (_%__kont3815738158%_
                                         _%L33098%_
                                         _%L33100%_)
                                        (if (gx#stx-datum? _%hd3248433092%_)
                                            (let ((_%e3249033053%_
                                                   (gx#stx-e
                                                    _%hd3248433092%_)))
                                              (if (equal? _%e3249033053%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3248533095%_)
                                                      (let ((_%e3249133057%_
                                                             (gx#syntax-e
                                                              _%tl3248533095%_)))
                                                        (let ((_%tl3249333064%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3249133057%_)))
                      (_%hd3249233061%_
                       (let () (declare (not safe)) (##car _%e3249133057%_))))
                  (if (gx#stx-null? _%tl3249333064%_)
                      (_%__kont3815938160%_ _%hd3249233061%_)
                      (_%__kont3817738178%_))))
              (_%__kont3817738178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3249033053%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3248533095%_)
                                                          (let ((_%e3250032993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3248533095%_)))
                    (let ((_%tl3250233000%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3250032993%_)))
                          (_%hd3250132997%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3250032993%_))))
                      (if (gx#stx-pair? _%tl3250233000%_)
                          (let ((_%e3250333003%_
                                 (gx#syntax-e _%tl3250233000%_)))
                            (let ((_%tl3250533010%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3250333003%_)))
                                  (_%hd3250433007%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3250333003%_))))
                              (if (gx#stx-null? _%tl3250533010%_)
                                  (_%__kont3816138162%_
                                   _%hd3250433007%_
                                   _%hd3250132997%_)
                                  (_%__kont3817738178%_))))
                          (if (gx#stx-null? _%tl3250233000%_)
                              (_%__match3830938310%_
                               _%e3248333088%_
                               _%hd3248433092%_
                               _%tl3248533095%_
                               _%e3250032993%_
                               _%hd3250132997%_
                               _%tl3250233000%_)
                              (_%__kont3817738178%_)))))
                  (_%__kont3817738178%_))
              (if (equal? _%e3249033053%_ 'splice:)
                  (if (gx#stx-pair? _%tl3248533095%_)
                      (let ((_%e3251232929%_ (gx#syntax-e _%tl3248533095%_)))
                        (let ((_%tl3251432936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3251232929%_)))
                              (_%hd3251332933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3251232929%_))))
                          (if (gx#stx-pair? _%tl3251432936%_)
                              (let ((_%e3251532939%_
                                     (gx#syntax-e _%tl3251432936%_)))
                                (let ((_%tl3251732946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3251532939%_)))
                                      (_%hd3251632943%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3251532939%_))))
                                  (if (gx#stx-null? _%tl3251732946%_)
                                      (_%__kont3816338164%_
                                       _%hd3251632943%_
                                       _%hd3251332933%_)
                                      (_%__kont3817738178%_))))
                              (if (gx#stx-null? _%tl3251432936%_)
                                  (_%__match3830938310%_
                                   _%e3248333088%_
                                   _%hd3248433092%_
                                   _%tl3248533095%_
                                   _%e3251232929%_
                                   _%hd3251332933%_
                                   _%tl3251432936%_)
                                  (_%__kont3817738178%_)))))
                      (_%__kont3817738178%_))
                  (if (equal? _%e3249033053%_ 'box:)
                      (if (gx#stx-pair? _%tl3248533095%_)
                          (let ((_%e3252332884%_
                                 (gx#syntax-e _%tl3248533095%_)))
                            (let ((_%tl3252532891%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3252332884%_)))
                                  (_%hd3252432888%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3252332884%_))))
                              (if (gx#stx-null? _%tl3252532891%_)
                                  (_%__kont3816538166%_ _%hd3252432888%_)
                                  (_%__kont3817738178%_))))
                          (_%__kont3817738178%_))
                      (if (gx#stx-pair? _%tl3248533095%_)
                          (let ((_%e3253132834%_
                                 (gx#syntax-e _%tl3248533095%_)))
                            (let ((_%tl3253332841%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3253132834%_)))
                                  (_%hd3253232838%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3253132834%_))))
                              (if (gx#stx-null? _%tl3253332841%_)
                                  (_%__match3830938310%_
                                   _%e3248333088%_
                                   _%hd3248433092%_
                                   _%tl3248533095%_
                                   _%e3253132834%_
                                   _%hd3253232838%_
                                   _%tl3253332841%_)
                                  (if (equal? _%e3249033053%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3253332841%_)
                                          (let ((_%e3254232791%_
                                                 (gx#syntax-e
                                                  _%tl3253332841%_)))
                                            (let ((_%tl3254432798%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3254232791%_)))
                                                  (_%hd3254332795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3254232791%_))))
                                              (if (gx#stx-null?
                                                   _%tl3254432798%_)
                                                  (_%__kont3816938170%_
                                                   _%hd3254332795%_)
                                                  (_%__kont3817738178%_))))
                                          (_%__kont3817738178%_))
                                      (if (equal? _%e3249033053%_ 'class:)
                                          (if (gx#stx-pair? _%tl3253332841%_)
                                              (let ((_%e3255332734%_
                                                     (gx#syntax-e
                                                      _%tl3253332841%_)))
                                                (let ((_%tl3255532741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3255332734%_)))
                                                      (_%hd3255432738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3255332734%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3255532741%_)
                                                      (_%__kont3817138172%_
                                                       _%hd3255432738%_)
                                                      (_%__kont3817738178%_))))
                                              (_%__kont3817738178%_))
                                          (if (equal? _%e3249033053%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3253332841%_)
                                                  (let ((_%e3256532675%_
                                                         (gx#syntax-e
                                                          _%tl3253332841%_)))
                                                    (let ((_%tl3256732682%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3256532675%_)))
                                                          (_%hd3256632679%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3256532675%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3256732682%_)
                                                          (_%__kont3817338174%_
                                                           _%hd3256632679%_
                                                           _%hd3253232838%_)
                                                          (_%__kont3817738178%_))))
                                                  (_%__kont3817738178%_))
                                              (_%__kont3817738178%_)))))))
                          (_%__kont3817738178%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3248533095%_)
                                                (let ((_%e3253132834%_
                                                       (gx#syntax-e
                                                        _%tl3248533095%_)))
                                                  (let ((_%tl3253332841%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3253132834%_)))
                                                        (_%hd3253232838%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3253132834%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3253332841%_)
                                                        (_%__match3830938310%_
                                                         _%e3248333088%_
                                                         _%hd3248433092%_
                                                         _%tl3248533095%_
                                                         _%e3253132834%_
                                                         _%hd3253232838%_
                                                         _%tl3253332841%_)
                                                        (_%__kont3817738178%_))))
                                                (_%__kont3817738178%_))))))))
                          (if (gx#stx-pair? _%__stx3815238153%_)
                              (let ((_%e3247433187%_
                                     (gx#syntax-e _%__stx3815238153%_)))
                                (let ((_%tl3247633194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3247433187%_)))
                                      (_%hd3247533191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3247433187%_))))
                                  (if (gx#stx-datum? _%hd3247533191%_)
                                      (let ((_%e3247733197%_
                                             (gx#stx-e _%hd3247533191%_)))
                                        (if (equal? _%e3247733197%_ '?:)
                                            (if (gx#stx-pair? _%tl3247633194%_)
                                                (let ((_%e3247833201%_
                                                       (gx#syntax-e
                                                        _%tl3247633194%_)))
                                                  (let ((_%tl3248033208%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3247833201%_)))
                                                        (_%hd3247933205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3247833201%_))))
                                                    (_%__kont3815538156%_
                                                     _%tl3248033208%_)))
                                                (_%__match3820338204%_
                                                 _%e3247433187%_
                                                 _%hd3247533191%_
                                                 _%tl3247633194%_))
                                            (_%__match3820338204%_
                                             _%e3247433187%_
                                             _%hd3247533191%_
                                             _%tl3247633194%_)))
                                      (_%__match3820338204%_
                                       _%e3247433187%_
                                       _%hd3247533191%_
                                       _%tl3247633194%_))))
                              (_%__kont3817738178%_)))))))
                 (_%loop-vector32170%_
                  (lambda (_%body32331%_ _%vars32333%_ _%K32334%_)
                    (let* ((_%__stx3841038411%_ _%body32331%_)
                           (_%g3233732360%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3841038411%_))))
                      (let ((_%__kont3841338414%_
                             (lambda (_%L32437%_)
                               (_%loop-list32171%_
                                _%L32437%_
                                _%vars32333%_
                                _%K32334%_)))
                            (_%__kont3841538416%_
                             (lambda (_%L32391%_)
                               (_%loop32168%_
                                _%L32391%_
                                _%vars32333%_
                                _%K32334%_))))
                        (if (gx#stx-pair? _%__stx3841038411%_)
                            (let ((_%e3234032413%_
                                   (gx#syntax-e _%__stx3841038411%_)))
                              (let ((_%tl3234232420%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3234032413%_)))
                                    (_%hd3234132417%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3234032413%_))))
                                (if (gx#stx-datum? _%hd3234132417%_)
                                    (let ((_%e3234332423%_
                                           (gx#stx-e _%hd3234132417%_)))
                                      (if (equal? _%e3234332423%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3234232420%_)
                                              (let ((_%e3234432427%_
                                                     (gx#syntax-e
                                                      _%tl3234232420%_)))
                                                (let ((_%tl3234632434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3234432427%_)))
                                                      (_%hd3234532431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3234432427%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3234632434%_)
                                                      (_%__kont3841338414%_
                                                       _%hd3234532431%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3233732360%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3233732360%_)))
                                          (if (equal? _%e3234332423%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3234232420%_)
                                                  (let ((_%e3235232381%_
                                                         (gx#syntax-e
                                                          _%tl3234232420%_)))
                                                    (let ((_%tl3235432388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3235232381%_)))
                                                          (_%hd3235332385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3235232381%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3235432388%_)
                                                          (_%__kont3841538416%_
                                                           _%hd3235332385%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3233732360%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3233732360%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3233732360%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3233732360%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3233732360%_)))))))
                 (_%loop-list32171%_
                  (lambda (_%rest32261%_ _%vars32263%_ _%K32264%_)
                    (let* ((_%__stx3846038461%_ _%rest32261%_)
                           (_%g3226732279%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3846038461%_))))
                      (let ((_%__kont3846338464%_
                             (lambda (_%L32307%_ _%L32309%_)
                               (_%loop32168%_
                                _%L32309%_
                                _%vars32263%_
                                (lambda (_%g3232132323%_)
                                  (_%loop-list32171%_
                                   _%L32307%_
                                   _%g3232132323%_
                                   _%K32264%_)))))
                            (_%__kont3846538466%_
                             (lambda () (_%K32264%_ _%vars32263%_))))
                        (if (gx#stx-pair? _%__stx3846038461%_)
                            (let ((_%e3227132297%_
                                   (gx#syntax-e _%__stx3846038461%_)))
                              (let ((_%tl3227332304%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3227132297%_)))
                                    (_%hd3227232301%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3227132297%_))))
                                (_%__kont3846338464%_
                                 _%tl3227332304%_
                                 _%hd3227232301%_)))
                            (_%__kont3846538466%_))))))
                 (_%loop-class-list32172%_
                  (lambda (_%rest32174%_ _%vars32176%_ _%K32177%_)
                    (let* ((_%__stx3847638477%_ _%rest32174%_)
                           (_%g3218032195%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3847638477%_))))
                      (let ((_%__kont3847938480%_
                             (lambda (_%L32233%_ _%L32235%_)
                               (_%loop32168%_
                                _%L32235%_
                                _%vars32176%_
                                (lambda (_%g3225132253%_)
                                  (_%loop-class-list32172%_
                                   _%L32233%_
                                   _%g3225132253%_
                                   _%K32177%_)))))
                            (_%__kont3848138482%_
                             (lambda () (_%K32177%_ _%vars32176%_))))
                        (if (gx#stx-pair? _%__stx3847638477%_)
                            (let ((_%e3218432213%_
                                   (gx#syntax-e _%__stx3847638477%_)))
                              (let ((_%tl3218632220%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3218432213%_)))
                                    (_%hd3218532217%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3218432213%_))))
                                (if (gx#stx-pair? _%tl3218632220%_)
                                    (let ((_%e3218732223%_
                                           (gx#syntax-e _%tl3218632220%_)))
                                      (let ((_%tl3218932230%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3218732223%_)))
                                            (_%hd3218832227%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3218732223%_))))
                                        (_%__kont3847938480%_
                                         _%tl3218932230%_
                                         _%hd3218832227%_)))
                                    (_%__kont3848138482%_))))
                            (_%__kont3848138482%_)))))))
          (_%loop32168%_ _%ptree32165%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29091%_ _%tgt29093%_ _%ptree29094%_ _%K29095%_ _%E29096%_)
        (letrec ((_%generate129098%_
                  (lambda (_%tgt30364%_ _%ptree30366%_ _%K30367%_ _%E30368%_)
                    (let* ((_%g3037030378%_
                            (lambda (_%g3037130374%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3037130374%_)))
                           (_%g3036932161%_
                            (lambda (_%g3037130382%_)
                              ((lambda (_%L30385%_)
                                 (let* ((_%__stx3871238713%_ _%ptree30366%_)
                                        (_%g3041230554%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3871238713%_))))
                                   (let ((_%__kont3871538716%_
                                          (lambda (_%L31876%_ _%L31878%_)
                                            (let* ((_%__stx3863038631%_
                                                    _%L31876%_)
                                                   (_%g3189531930%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3863038631%_))))
                                              (let ((_%__kont3863338634%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31878%_ (cons _%L30385%_ '())))
                           (cons _%K30367%_ (cons _%E30368%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3863538636%_
                                                     (lambda (_%L32131%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31878%_ (cons _%L30385%_ '())))
                           (cons (_%generate129098%_
                                  _%tgt30364%_
                                  _%L32131%_
                                  _%K30367%_
                                  _%E30368%_)
                                 (cons _%E30368%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3863738638%_
                                                     (lambda (_%L32069%_)
                                                       (let* ((_%g3208332091%_
                                                               (lambda (_%g3208432087%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3208432087%_)))
                      (_%g3208232110%_
                       (lambda (_%g3208432095%_)
                         ((lambda (_%L32098%_)
                            (cons 'let
                                  (cons (cons (cons _%L32098%_
                                                    (cons (cons _%L31878%_
                                                                (cons _%L30385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%L32098%_
                                                          (cons (_%generate129098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L32098%_
                         _%L32069%_
                         _%K30367%_
                         _%E30368%_)
                        (cons _%E30368%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3208432095%_))))
                 (_%g3208232110%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3863938640%_
                                                     (lambda (_%L31985%_
                                                              _%L31987%_)
                                                       (let* ((_%g3200732015%_
                                                               (lambda (_%g3200832011%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3200832011%_)))
                      (_%g3200632034%_
                       (lambda (_%g3200832019%_)
                         ((lambda (_%L32022%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%L31878%_
                                                    (cons _%L30385%_ '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%L32022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%L31987%_ (cons _%L30385%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129098%_
                         _%L32022%_
                         _%L31985%_
                         _%K30367%_
                         _%E30368%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30368%_ '())))))
                          _%g3200832019%_))))
                 (_%g3200632034%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3189232142%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3863038631%_)
                                                             (let ((_%e3189832121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3863038631%_)))
                       (let ((_%tl3190032128%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3189832121%_)))
                             (_%hd3189932125%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3189832121%_))))
                         (if (gx#stx-null? _%tl3190032128%_)
                             (_%__kont3863538636%_ _%hd3189932125%_)
                             (if (gx#stx-datum? _%hd3189932125%_)
                                 (let ((_%e3190532055%_
                                        (gx#stx-e _%hd3189932125%_)))
                                   (if (equal? _%e3190532055%_ '=>:)
                                       (if (gx#stx-pair? _%tl3190032128%_)
                                           (let ((_%e3190632059%_
                                                  (gx#syntax-e
                                                   _%tl3190032128%_)))
                                             (let ((_%tl3190832066%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3190632059%_)))
                                                   (_%hd3190732063%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3190632059%_))))
                                               (if (gx#stx-null?
                                                    _%tl3190832066%_)
                                                   (_%__kont3863738638%_
                                                    _%hd3190732063%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3189531930%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3189531930%_)))
                                       (if (equal? _%e3190532055%_ '::)
                                           (if (gx#stx-pair? _%tl3190032128%_)
                                               (let ((_%e3191531951%_
                                                      (gx#syntax-e
                                                       _%tl3190032128%_)))
                                                 (let ((_%tl3191731958%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3191531951%_)))
                                                       (_%hd3191631955%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3191531951%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3191731958%_)
                                                       (let ((_%e3191831961%_
                                                              (gx#syntax-e
                                                               _%tl3191731958%_)))
                                                         (let ((_%tl3192031968%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3191831961%_)))
                       (_%hd3191931965%_
                        (let () (declare (not safe)) (##car _%e3191831961%_))))
                   (if (gx#stx-datum? _%hd3191931965%_)
                       (let ((_%e3192131971%_ (gx#stx-e _%hd3191931965%_)))
                         (if (equal? _%e3192131971%_ '=>:)
                             (if (gx#stx-pair? _%tl3192031968%_)
                                 (let ((_%e3192231975%_
                                        (gx#syntax-e _%tl3192031968%_)))
                                   (let ((_%tl3192431982%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3192231975%_)))
                                         (_%hd3192331979%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3192231975%_))))
                                     (if (gx#stx-null? _%tl3192431982%_)
                                         (_%__kont3863938640%_
                                          _%hd3192331979%_
                                          _%hd3191631955%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3189531930%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3189531930%_)))
                             (let () (declare (not safe)) (_%g3189531930%_))))
                       (let () (declare (not safe)) (_%g3189531930%_)))))
               (let () (declare (not safe)) (_%g3189531930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3189531930%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3189531930%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3189531930%_))))))
                     (let () (declare (not safe)) (_%g3189531930%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3863038631%_)
                                                      (_%__kont3863338634%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3189232142%_))))))))
                                         (_%__kont3871738718%_
                                          (lambda (_%L31773%_)
                                            (let* ((_%__stx3861438615%_
                                                    _%L31773%_)
                                                   (_%g3178631798%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3861438615%_))))
                                              (let ((_%__kont3861738618%_
                                                     (lambda (_%L31826%_
                                                              _%L31828%_)
                                                       (_%generate129098%_
                                                        _%tgt30364%_
                                                        _%L31828%_
                                                        (_%generate129098%_
                                                         _%tgt30364%_
                                                         (cons 'and:
                                                               _%L31826%_)
                                                         _%K30367%_
                                                         _%E30368%_)
                                                        _%E30368%_)))
                                                    (_%__kont3861938620%_
                                                     (lambda () _%K30367%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3861438615%_)
                                                    (let ((_%e3179031816%_
                                                           (gx#syntax-e
                                                            _%__stx3861438615%_)))
                                                      (let ((_%tl3179231823%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3179031816%_)))
                    (_%hd3179131820%_
                     (let () (declare (not safe)) (##car _%e3179031816%_))))
                (_%__kont3861738618%_ _%tl3179231823%_ _%hd3179131820%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3861938620%_))))))
                                         (_%__kont3871938720%_
                                          (lambda (_%L31680%_)
                                            (let* ((_%__stx3859838599%_
                                                    _%L31680%_)
                                                   (_%g3169331705%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3859838599%_))))
                                              (let ((_%__kont3860138602%_
                                                     (lambda (_%L31733%_
                                                              _%L31735%_)
                                                       (_%generate129098%_
                                                        _%tgt30364%_
                                                        _%L31735%_
                                                        _%K30367%_
                                                        (_%generate129098%_
                                                         _%tgt30364%_
                                                         (cons 'or: _%L31733%_)
                                                         _%K30367%_
                                                         _%E30368%_))))
                                                    (_%__kont3860338604%_
                                                     (lambda () _%E30368%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3859838599%_)
                                                    (let ((_%e3169731723%_
                                                           (gx#syntax-e
                                                            _%__stx3859838599%_)))
                                                      (let ((_%tl3169931730%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3169731723%_)))
                    (_%hd3169831727%_
                     (let () (declare (not safe)) (##car _%e3169731723%_))))
                (_%__kont3860138602%_ _%tl3169931730%_ _%hd3169831727%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3860338604%_))))))
                                         (_%__kont3872138722%_
                                          (lambda (_%L31645%_)
                                            (_%generate129098%_
                                             _%tgt30364%_
                                             _%L31645%_
                                             _%E30368%_
                                             _%K30367%_)))
                                         (_%__kont3872338724%_
                                          (lambda (_%L31519%_ _%L31521%_)
                                            (let* ((_%g3153831553%_
                                                    (lambda (_%g3153931549%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3153931549%_)))
                                                   (_%g3153731610%_
                                                    (lambda (_%g3153931557%_)
                                                      (if (gx#stx-pair?
                                                           _%g3153931557%_)
                                                          (let ((_%e3154231560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3153931557%_)))
                    (let ((_%hd3154331564%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3154231560%_)))
                          (_%tl3154431567%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3154231560%_))))
                      (if (gx#stx-pair? _%tl3154431567%_)
                          (let ((_%e3154531570%_
                                 (gx#syntax-e _%tl3154431567%_)))
                            (let ((_%hd3154631574%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3154531570%_)))
                                  (_%tl3154731577%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3154531570%_))))
                              (if (gx#stx-null? _%tl3154731577%_)
                                  ((lambda (_%L31580%_ _%L31582%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%L30385%_ '()))
                                                 (cons (let ((_%hd-pat31598%_
                                                              (gx#stx-e
                                                               _%L31521%_))
                                                             (_%tl-pat31600%_
                                                              (gx#stx-e
                                                               _%L31519%_)))
                                                         (if (and (equal? _%hd-pat31598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31600%_ '(any:)))
                     _%K30367%_
                     (if (equal? _%tl-pat31600%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%L31582%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129098%_
                                            _%L31582%_
                                            _%L31521%_
                                            _%K30367%_
                                            _%E30368%_)
                                           '())))
                         (if (equal? _%hd-pat31598%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%L31580%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L30385%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129098%_
                                                _%L31580%_
                                                _%L31519%_
                                                _%K30367%_
                                                _%E30368%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%L31582%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%L30385%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L31580%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30385%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129098%_
                                                _%L31582%_
                                                _%L31521%_
                                                (_%generate129098%_
                                                 _%L31580%_
                                                 _%L31519%_
                                                 _%K30367%_
                                                 _%E30368%_)
                                                _%E30368%_)
                                               '())))))))
               (cons _%E30368%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3154631574%_
                                   _%hd3154331564%_)
                                  (_%g3153831553%_ _%g3153931557%_))))
                          (_%g3153831553%_ _%g3153931557%_))))
                  (_%g3153831553%_ _%g3153931557%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3153731610%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3872538726%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%L30385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30367%_ (cons _%E30368%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3872738728%_
                                          (lambda (_%L31435%_ _%L31437%_)
                                            (_%generate-splice29100%_
                                             _%tgt30364%_
                                             _%L31437%_
                                             _%L31435%_
                                             _%K30367%_
                                             _%E30368%_)))
                                         (_%__kont3872938730%_
                                          (lambda (_%L31349%_)
                                            (let* ((_%g3136331371%_
                                                    (lambda (_%g3136431367%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3136431367%_)))
                                                   (_%g3136231390%_
                                                    (lambda (_%g3136431375%_)
                                                      ((lambda (_%L31378%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%L30385%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%L31378%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%L30385%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129098%_
                                                      _%L31378%_
                                                      _%L31349%_
                                                      _%K30367%_
                                                      _%E30368%_)
                                                     '())))
                                   (cons _%E30368%_ '())))))
               _%g3136431375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3136231390%_
                                               (gx#genident 'e)))))
                                         (_%__kont3873138732%_
                                          (lambda (_%L31154%_)
                                            (let* ((_%__stx3854838549%_
                                                    _%L31154%_)
                                                   (_%g3116931192%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3854838549%_))))
                                              (let ((_%__kont3855138552%_
                                                     (lambda (_%L31269%_)
                                                       (let* ((_%g3128331291%_
                                                               (lambda (_%g3128431287%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3128431287%_)))
                      (_%g3128231310%_
                       (lambda (_%g3128431295%_)
                         ((lambda (_%L31298%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%L30385%_
                                                                '()))
                                                    (cons _%L31298%_ '())))
                                        (cons (_%generate-simple-vector29101%_
                                               _%tgt30364%_
                                               _%L31269%_
                                               '0
                                               '##values-ref
                                               _%K30367%_
                                               _%E30368%_)
                                              (cons _%E30368%_ '())))))
                          _%g3128431295%_))))
                 (_%g3128231310%_ (gx#stx-length _%L31269%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3855338554%_
                                                     (lambda (_%L31223%_)
                                                       (_%generate-list-vector29102%_
                                                        _%tgt30364%_
                                                        _%L31223%_
                                                        'values->list
                                                        _%K30367%_
                                                        _%E30368%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3854838549%_)
                                                    (let ((_%e3117231245%_
                                                           (gx#syntax-e
                                                            _%__stx3854838549%_)))
                                                      (let ((_%tl3117431252%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3117231245%_)))
                    (_%hd3117331249%_
                     (let () (declare (not safe)) (##car _%e3117231245%_))))
                (if (gx#stx-datum? _%hd3117331249%_)
                    (let ((_%e3117531255%_ (gx#stx-e _%hd3117331249%_)))
                      (if (equal? _%e3117531255%_ 'simple:)
                          (if (gx#stx-pair? _%tl3117431252%_)
                              (let ((_%e3117631259%_
                                     (gx#syntax-e _%tl3117431252%_)))
                                (let ((_%tl3117831266%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3117631259%_)))
                                      (_%hd3117731263%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3117631259%_))))
                                  (if (gx#stx-null? _%tl3117831266%_)
                                      (_%__kont3855138552%_ _%hd3117731263%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3116931192%_)))))
                              (let () (declare (not safe)) (_%g3116931192%_)))
                          (if (equal? _%e3117531255%_ 'list:)
                              (if (gx#stx-pair? _%tl3117431252%_)
                                  (let ((_%e3118431213%_
                                         (gx#syntax-e _%tl3117431252%_)))
                                    (let ((_%tl3118631220%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3118431213%_)))
                                          (_%hd3118531217%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3118431213%_))))
                                      (if (gx#stx-null? _%tl3118631220%_)
                                          (_%__kont3855338554%_
                                           _%hd3118531217%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3116931192%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3116931192%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3116931192%_)))))
                    (let () (declare (not safe)) (_%g3116931192%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3116931192%_)))))))
                                         (_%__kont3873338734%_
                                          (lambda (_%L30959%_)
                                            (let* ((_%__stx3849838499%_
                                                    _%L30959%_)
                                                   (_%g3097430997%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3849838499%_))))
                                              (let ((_%__kont3850138502%_
                                                     (lambda (_%L31074%_)
                                                       (let* ((_%g3108831096%_
                                                               (lambda (_%g3108931092%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3108931092%_)))
                      (_%g3108731115%_
                       (lambda (_%g3108931100%_)
                         ((lambda (_%L31103%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%L30385%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%L30385%_ '()))
                              (cons _%L31103%_ '())))
                  (cons (_%generate-simple-vector29101%_
                         _%tgt30364%_
                         _%L31074%_
                         '0
                         '##vector-ref
                         _%K30367%_
                         _%E30368%_)
                        (cons _%E30368%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30368%_ '())))))
                          _%g3108931100%_))))
                 (_%g3108731115%_ (gx#stx-length _%L31074%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3850338504%_
                                                     (lambda (_%L31028%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%L30385%_ '()))
                           (cons (_%generate-list-vector29102%_
                                  _%tgt30364%_
                                  _%L31028%_
                                  'vector->list
                                  _%K30367%_
                                  _%E30368%_)
                                 (cons _%E30368%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3849838499%_)
                                                    (let ((_%e3097731050%_
                                                           (gx#syntax-e
                                                            _%__stx3849838499%_)))
                                                      (let ((_%tl3097931057%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3097731050%_)))
                    (_%hd3097831054%_
                     (let () (declare (not safe)) (##car _%e3097731050%_))))
                (if (gx#stx-datum? _%hd3097831054%_)
                    (let ((_%e3098031060%_ (gx#stx-e _%hd3097831054%_)))
                      (if (equal? _%e3098031060%_ 'simple:)
                          (if (gx#stx-pair? _%tl3097931057%_)
                              (let ((_%e3098131064%_
                                     (gx#syntax-e _%tl3097931057%_)))
                                (let ((_%tl3098331071%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3098131064%_)))
                                      (_%hd3098231068%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3098131064%_))))
                                  (if (gx#stx-null? _%tl3098331071%_)
                                      (_%__kont3850138502%_ _%hd3098231068%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3097430997%_)))))
                              (let () (declare (not safe)) (_%g3097430997%_)))
                          (if (equal? _%e3098031060%_ 'list:)
                              (if (gx#stx-pair? _%tl3097931057%_)
                                  (let ((_%e3098931018%_
                                         (gx#syntax-e _%tl3097931057%_)))
                                    (let ((_%tl3099131025%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3098931018%_)))
                                          (_%hd3099031022%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3098931018%_))))
                                      (if (gx#stx-null? _%tl3099131025%_)
                                          (_%__kont3850338504%_
                                           _%hd3099031022%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3097430997%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3097430997%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3097430997%_)))))
                    (let () (declare (not safe)) (_%g3097430997%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3097430997%_)))))))
                                         (_%__kont3873538736%_
                                          (lambda (_%L30910%_ _%L30912%_)
                                            (_%generate-struct29103%_
                                             (gx#stx-e _%L30912%_)
                                             _%tgt30364%_
                                             _%L30910%_
                                             _%K30367%_
                                             _%E30368%_)))
                                         (_%__kont3873738738%_
                                          (lambda (_%L30851%_ _%L30853%_)
                                            (_%generate-class29106%_
                                             (gx#stx-e _%L30853%_)
                                             _%tgt30364%_
                                             _%L30851%_
                                             _%K30367%_
                                             _%E30368%_)))
                                         (_%__kont3873938740%_
                                          (lambda (_%L30748%_)
                                            (let* ((_%g3076230770%_
                                                    (lambda (_%g3076330766%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3076330766%_)))
                                                   (_%g3076130789%_
                                                    (lambda (_%g3076330774%_)
                                                      ((lambda (_%L30777%_)
                                                         (cons 'if
                                                               (cons (cons _%L30777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%L30385%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L30748%_ '()))
                                               '())))
                             (cons _%K30367%_ (cons _%E30368%_ '())))))
               _%g3076330774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3076130789%_
                                               (let ((_%e30793%_
                                                      (gx#stx-e _%L30748%_)))
                                                 (if (or (symbol? _%e30793%_)
                                                         (keyword? _%e30793%_)
                                                         (immediate?
                                                          _%e30793%_))
                                                     '##eq?
                                                     (if (number? _%e30793%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3874138742%_
                                          (lambda (_%L30668%_ _%L30670%_)
                                            (let* ((_%g3068630694%_
                                                    (lambda (_%g3068730690%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3068730690%_)))
                                                   (_%g3068530713%_
                                                    (lambda (_%g3068730698%_)
                                                      ((lambda (_%L30701%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%L30701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%L30670%_
                                                     (cons _%L30385%_ '()))
                                               '()))
                                   '())
                             (cons (_%generate129098%_
                                    _%L30701%_
                                    _%L30668%_
                                    _%K30367%_
                                    _%E30368%_)
                                   '()))))
               _%g3068730698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3068530713%_
                                               (gx#genident 'e)))))
                                         (_%__kont3874338744%_
                                          (lambda (_%L30610%_)
                                            (cons 'let
                                                  (cons (cons (cons _%L30610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30385%_ '()))
                      '())
                (cons _%K30367%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3874538746%_
                                          (lambda () _%K30367%_)))
                                     (if (gx#stx-pair? _%__stx3871238713%_)
                                         (let ((_%e3041631852%_
                                                (gx#syntax-e
                                                 _%__stx3871238713%_)))
                                           (let ((_%tl3041831859%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3041631852%_)))
                                                 (_%hd3041731856%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3041631852%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3041731856%_)
                                                 (let ((_%e3041931862%_
                                                        (gx#stx-e
                                                         _%hd3041731856%_)))
                                                   (if (equal? _%e3041931862%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3041831859%_)
                                                           (let ((_%e3042031866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3041831859%_)))
                     (let ((_%tl3042231873%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3042031866%_)))
                           (_%hd3042131870%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3042031866%_))))
                       (_%__kont3871538716%_
                        _%tl3042231873%_
                        _%hd3042131870%_)))
                   (let () (declare (not safe)) (_%g3041230554%_)))
               (if (equal? _%e3041931862%_ 'and:)
                   (_%__kont3871738718%_ _%tl3041831859%_)
                   (if (equal? _%e3041931862%_ 'or:)
                       (_%__kont3871938720%_ _%tl3041831859%_)
                       (if (equal? _%e3041931862%_ 'not:)
                           (if (gx#stx-pair? _%tl3041831859%_)
                               (let ((_%e3043831635%_
                                      (gx#syntax-e _%tl3041831859%_)))
                                 (let ((_%tl3044031642%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3043831635%_)))
                                       (_%hd3043931639%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3043831635%_))))
                                   (if (gx#stx-null? _%tl3044031642%_)
                                       (_%__kont3872138722%_ _%hd3043931639%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3041230554%_)))))
                               (let () (declare (not safe)) (_%g3041230554%_)))
                           (if (equal? _%e3041931862%_ 'cons:)
                               (if (gx#stx-pair? _%tl3041831859%_)
                                   (let ((_%e3044731499%_
                                          (gx#syntax-e _%tl3041831859%_)))
                                     (let ((_%tl3044931506%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3044731499%_)))
                                           (_%hd3044831503%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3044731499%_))))
                                       (if (gx#stx-pair? _%tl3044931506%_)
                                           (let ((_%e3045031509%_
                                                  (gx#syntax-e
                                                   _%tl3044931506%_)))
                                             (let ((_%tl3045231516%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3045031509%_)))
                                                   (_%hd3045131513%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3045031509%_))))
                                               (if (gx#stx-null?
                                                    _%tl3045231516%_)
                                                   (_%__kont3872338724%_
                                                    _%hd3045131513%_
                                                    _%hd3044831503%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3041230554%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3041230554%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3041230554%_)))
                               (if (equal? _%e3041931862%_ 'null:)
                                   (if (gx#stx-null? _%tl3041831859%_)
                                       (_%__kont3872538726%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3041230554%_)))
                                   (if (equal? _%e3041931862%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3041831859%_)
                                           (let ((_%e3046331415%_
                                                  (gx#syntax-e
                                                   _%tl3041831859%_)))
                                             (let ((_%tl3046531422%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3046331415%_)))
                                                   (_%hd3046431419%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3046331415%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3046531422%_)
                                                   (let ((_%e3046631425%_
                                                          (gx#syntax-e
                                                           _%tl3046531422%_)))
                                                     (let ((_%tl3046831432%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3046631425%_)))
                                                           (_%hd3046731429%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3046631425%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3046831432%_)
                                                           (_%__kont3872738728%_
                                                            _%hd3046731429%_
                                                            _%hd3046431419%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3041230554%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3041230554%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3041230554%_)))
                                       (if (equal? _%e3041931862%_ 'box:)
                                           (if (gx#stx-pair? _%tl3041831859%_)
                                               (let ((_%e3047431339%_
                                                      (gx#syntax-e
                                                       _%tl3041831859%_)))
                                                 (let ((_%tl3047631346%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3047431339%_)))
                                                       (_%hd3047531343%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3047431339%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3047631346%_)
                                                       (_%__kont3872938730%_
                                                        _%hd3047531343%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3041230554%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3041230554%_)))
                                           (if (equal? _%e3041931862%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3041831859%_)
                                                   (let ((_%e3048231144%_
                                                          (gx#syntax-e
                                                           _%tl3041831859%_)))
                                                     (let ((_%tl3048431151%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3048231144%_)))
                                                           (_%hd3048331148%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3048231144%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3048431151%_)
                                                           (_%__kont3873138732%_
                                                            _%hd3048331148%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3041230554%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3041230554%_)))
                                               (if (equal? _%e3041931862%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3041831859%_)
                                                       (let ((_%e3049030949%_
                                                              (gx#syntax-e
                                                               _%tl3041831859%_)))
                                                         (let ((_%tl3049230956%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3049030949%_)))
                       (_%hd3049130953%_
                        (let () (declare (not safe)) (##car _%e3049030949%_))))
                   (if (gx#stx-null? _%tl3049230956%_)
                       (_%__kont3873338734%_ _%hd3049130953%_)
                       (let () (declare (not safe)) (_%g3041230554%_)))))
               (let () (declare (not safe)) (_%g3041230554%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3041931862%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3041831859%_)
                                                           (let ((_%e3049930890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3041831859%_)))
                     (let ((_%tl3050130897%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3049930890%_)))
                           (_%hd3050030894%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3049930890%_))))
                       (if (gx#stx-pair? _%tl3050130897%_)
                           (let ((_%e3050230900%_
                                  (gx#syntax-e _%tl3050130897%_)))
                             (let ((_%tl3050430907%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3050230900%_)))
                                   (_%hd3050330904%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3050230900%_))))
                               (if (gx#stx-null? _%tl3050430907%_)
                                   (_%__kont3873538736%_
                                    _%hd3050330904%_
                                    _%hd3050030894%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3041230554%_)))))
                           (let () (declare (not safe)) (_%g3041230554%_)))))
                   (let () (declare (not safe)) (_%g3041230554%_)))
               (if (equal? _%e3041931862%_ 'class:)
                   (if (gx#stx-pair? _%tl3041831859%_)
                       (let ((_%e3051130831%_ (gx#syntax-e _%tl3041831859%_)))
                         (let ((_%tl3051330838%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3051130831%_)))
                               (_%hd3051230835%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3051130831%_))))
                           (if (gx#stx-pair? _%tl3051330838%_)
                               (let ((_%e3051430841%_
                                      (gx#syntax-e _%tl3051330838%_)))
                                 (let ((_%tl3051630848%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3051430841%_)))
                                       (_%hd3051530845%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3051430841%_))))
                                   (if (gx#stx-null? _%tl3051630848%_)
                                       (_%__kont3873738738%_
                                        _%hd3051530845%_
                                        _%hd3051230835%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3041230554%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3041230554%_)))))
                       (let () (declare (not safe)) (_%g3041230554%_)))
                   (if (equal? _%e3041931862%_ 'datum:)
                       (if (gx#stx-pair? _%tl3041831859%_)
                           (let ((_%e3052230738%_
                                  (gx#syntax-e _%tl3041831859%_)))
                             (let ((_%tl3052430745%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3052230738%_)))
                                   (_%hd3052330742%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3052230738%_))))
                               (if (gx#stx-null? _%tl3052430745%_)
                                   (_%__kont3873938740%_ _%hd3052330742%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3041230554%_)))))
                           (let () (declare (not safe)) (_%g3041230554%_)))
                       (if (equal? _%e3041931862%_ 'apply:)
                           (if (gx#stx-pair? _%tl3041831859%_)
                               (let ((_%e3053130648%_
                                      (gx#syntax-e _%tl3041831859%_)))
                                 (let ((_%tl3053330655%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3053130648%_)))
                                       (_%hd3053230652%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3053130648%_))))
                                   (if (gx#stx-pair? _%tl3053330655%_)
                                       (let ((_%e3053430658%_
                                              (gx#syntax-e _%tl3053330655%_)))
                                         (let ((_%tl3053630665%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3053430658%_)))
                                               (_%hd3053530662%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3053430658%_))))
                                           (if (gx#stx-null? _%tl3053630665%_)
                                               (_%__kont3874138742%_
                                                _%hd3053530662%_
                                                _%hd3053230652%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3041230554%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3041230554%_)))))
                               (let () (declare (not safe)) (_%g3041230554%_)))
                           (if (equal? _%e3041931862%_ 'var:)
                               (if (gx#stx-pair? _%tl3041831859%_)
                                   (let ((_%e3054230600%_
                                          (gx#syntax-e _%tl3041831859%_)))
                                     (let ((_%tl3054430607%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3054230600%_)))
                                           (_%hd3054330604%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3054230600%_))))
                                       (if (gx#stx-null? _%tl3054430607%_)
                                           (_%__kont3874338744%_
                                            _%hd3054330604%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3041230554%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3041230554%_)))
                               (if (equal? _%e3041931862%_ 'any:)
                                   (if (gx#stx-null? _%tl3041831859%_)
                                       (_%__kont3874538746%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3041230554%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3041230554%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3041230554%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3041230554%_))))))
                               _%g3037130382%_))))
                      (_%g3036932161%_ _%tgt30364%_))))
                 (_%generate-splice29100%_
                  (lambda (_%tgt29736%_
                           _%hd29738%_
                           _%rest29739%_
                           _%K29740%_
                           _%E29741%_)
                    (let* ((_%g2974329760%_
                            (lambda (_%g2974429756%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2974429756%_)))
                           (_%g2974230360%_
                            (lambda (_%g2974429764%_)
                              (if (gx#stx-pair/null? _%g2974429764%_)
                                  (let ((_g39867_
                                         (gx#syntax-split-splice
                                          _%g2974429764%_
                                          '0)))
                                    (begin
                                      (let ((_g39868_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39867_)
                                                   (##values-length _g39867_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39868_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39868_)))
                                      (let ((_%target2974629767%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39867_ 0)))
                                            (_%tl2974829770%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39867_ 1))))
                                        (if (gx#stx-null? _%tl2974829770%_)
                                            (letrec ((_%loop2974929773%_
                                                      (lambda (_%hd2974729777%_
                                                               _%var2975329780%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2974729777%_)
                                                            (let ((_%e2975029783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2974729777%_)))
                      (let ((_%lp-hd2975129787%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2975029783%_)))
                            (_%lp-tl2975229790%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2975029783%_))))
                        (_%loop2974929773%_
                         _%lp-tl2975229790%_
                         (cons _%lp-hd2975129787%_ _%var2975329780%_))))
                    (let ((_%var2975429793%_ (reverse _%var2975329780%_)))
                      ((lambda (_%L29797%_)
                         (let* ((_%g2981329830%_
                                 (lambda (_%g2981429826%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2981429826%_)))
                                (_%g2981230348%_
                                 (lambda (_%g2981429834%_)
                                   (if (gx#stx-pair/null? _%g2981429834%_)
                                       (let ((_g39869_
                                              (gx#syntax-split-splice
                                               _%g2981429834%_
                                               '0)))
                                         (begin
                                           (let ((_g39870_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39869_)
                                                        (##values-length
                                                         _g39869_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39870_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39870_)))
                                           (let ((_%target2981629837%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g39869_ 0)))
                                                 (_%tl2981829840%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g39869_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2981829840%_)
                                                 (letrec ((_%loop2981929843%_
                                                           (lambda (_%hd2981729847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2982329850%_)
                     (if (gx#stx-pair? _%hd2981729847%_)
                         (let ((_%e2982029853%_
                                (gx#syntax-e _%hd2981729847%_)))
                           (let ((_%lp-hd2982129857%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2982029853%_)))
                                 (_%lp-tl2982229860%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2982029853%_))))
                             (_%loop2981929843%_
                              _%lp-tl2982229860%_
                              (cons _%lp-hd2982129857%_ _%var-r2982329850%_))))
                         (let ((_%var-r2982429863%_
                                (reverse _%var-r2982329850%_)))
                           ((lambda (_%L29867%_)
                              (let* ((_%g2988429901%_
                                      (lambda (_%g2988529897%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2988529897%_)))
                                     (_%g2988330336%_
                                      (lambda (_%g2988529905%_)
                                        (if (gx#stx-pair/null? _%g2988529905%_)
                                            (let ((_g39871_
                                                   (gx#syntax-split-splice
                                                    _%g2988529905%_
                                                    '0)))
                                              (begin
                                                (let ((_g39872_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39871_)
                                                             (##values-length
                                                              _g39871_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39872_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2988729908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39871_
                                                          0)))
                                                      (_%tl2988929911%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39871_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2988929911%_)
                                                      (letrec ((_%loop2989029914%_
                                                                (lambda (_%hd2988829918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init2989429921%_)
                          (if (gx#stx-pair? _%hd2988829918%_)
                              (let ((_%e2989129924%_
                                     (gx#syntax-e _%hd2988829918%_)))
                                (let ((_%lp-hd2989229928%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2989129924%_)))
                                      (_%lp-tl2989329931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2989129924%_))))
                                  (_%loop2989029914%_
                                   _%lp-tl2989329931%_
                                   (cons _%lp-hd2989229928%_
                                         _%init2989429921%_))))
                              (let ((_%init2989529934%_
                                     (reverse _%init2989429921%_)))
                                ((lambda (_%L29938%_)
                                   (let* ((_%g2995529963%_
                                           (lambda (_%g2995629959%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2995629959%_)))
                                          (_%g2995430332%_
                                           (lambda (_%g2995629967%_)
                                             ((lambda (_%L29970%_)
                                                (let* ((_%g2998329991%_
                                                        (lambda (_%g2998429987%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2998429987%_)))
                                                       (_%g2998230328%_
                                                        (lambda (_%g2998429995%_)
                                                          ((lambda (_%L29998%_)
                                                             (let* ((_%g3001130019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3001230015%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3001230015%_)))
                            (_%g3001030324%_
                             (lambda (_%g3001230023%_)
                               ((lambda (_%L30026%_)
                                  (let* ((_%g3003930047%_
                                          (lambda (_%g3004030043%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3004030043%_)))
                                         (_%g3003830320%_
                                          (lambda (_%g3004030051%_)
                                            ((lambda (_%L30054%_)
                                               (let* ((_%g3006730075%_
                                                       (lambda (_%g3006830071%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3006830071%_)))
                                                      (_%g3006630316%_
                                                       (lambda (_%g3006830079%_)
                                                         ((lambda (_%L30082%_)
                                                            (let* ((_%g3009530103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3009630099%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3009630099%_)))
                           (_%g3009430312%_
                            (lambda (_%g3009630107%_)
                              ((lambda (_%L30110%_)
                                 (let* ((_%g3012330131%_
                                         (lambda (_%g3012430127%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3012430127%_)))
                                        (_%g3012230308%_
                                         (lambda (_%g3012430135%_)
                                           ((lambda (_%L30138%_)
                                              (let* ((_%g3015130159%_
                                                      (lambda (_%g3015230155%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3015230155%_)))
                                                     (_%g3015030293%_
                                                      (lambda (_%g3015230163%_)
                                                        ((lambda (_%L30166%_)
                                                           (let* ((_%g3017930187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3018030183%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3018030183%_)))
                          (_%g3017830281%_
                           (lambda (_%g3018030191%_)
                             ((lambda (_%L30194%_)
                                (let* ((_%g3020730215%_
                                        (lambda (_%g3020830211%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3020830211%_)))
                                       (_%g3020630277%_
                                        (lambda (_%g3020830219%_)
                                          ((lambda (_%L30222%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%L29998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%L30110%_
                                                     (foldr (lambda (_%g3023630247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3023730250%_)
                      (cons _%g3023630247%_ _%g3023730250%_))
                    '()
                    _%L29797%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L30138%_ '())))
                                   '()))
                       (cons (cons _%L30054%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%L30082%_
                                                           (cons _%L30110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3023830253%_ _%g3023930256%_)
                                  (cons _%g3023830253%_ _%g3023930256%_))
                                '()
                                _%L29867%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L30222%_ '())))
                                         '()))
                             (cons (cons _%L30026%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%L30110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3024030259%_ _%g3024130262%_)
                                  (cons _%g3024030259%_ _%g3024130262%_))
                                '()
                                _%L29867%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%L30110%_ '()))
                                     (cons (cons _%L30054%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%L30110%_
                     (foldr (lambda (_%g3024230265%_ _%g3024330268%_)
                              (cons _%g3024230265%_ _%g3024330268%_))
                            '()
                            _%L29867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L30194%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%L30026%_
                             (cons _%L29970%_
                                   (foldr (lambda (_%g3024430271%_
                                                   _%g3024530274%_)
                                            (cons _%g3024430271%_
                                                  _%g3024530274%_))
                                          '()
                                          _%L29938%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3020830219%_))))
                                  (_%g3020630277%_
                                   (_%generate129098%_
                                    _%L30082%_
                                    _%hd29738%_
                                    _%L30166%_
                                    _%L30194%_))))
                              _%g3018030191%_))))
                     (_%g3017830281%_
                      (cons _%L29998%_
                            (cons _%L30110%_
                                  (foldr (lambda (_%g3028430287%_
                                                  _%g3028530290%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3028430287%_
                                                             '()))
                                                 _%g3028530290%_))
                                         '()
                                         _%L29867%_))))))
                 _%g3015230163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3015030293%_
                                                 (cons _%L30026%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%L30110%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets _%L29867%_ _%L29797%_)
                       (foldr (lambda (_%g3029630300%_
                                       _%g3029730303%_
                                       _%g3029830305%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3029730303%_
                                                  (cons _%g3029630300%_ '())))
                                      _%g3029830305%_))
                              '()
                              _%L29867%_
                              _%L29797%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3012430135%_))))
                                   (_%g3012230308%_
                                    (_%generate129098%_
                                     _%L30110%_
                                     _%rest29739%_
                                     _%K29740%_
                                     _%E29741%_))))
                               _%g3009630107%_))))
                      (_%g3009430312%_ (gx#genident 'rest))))
                  _%g3006830079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3006630316%_
                                                  (gx#genident 'hd))))
                                             _%g3004030051%_))))
                                    (_%g3003830320%_
                                     (gx#genident 'splice-try))))
                                _%g3001230023%_))))
                       (_%g3001030324%_ (gx#genident 'splice-loop))))
                   _%g2998429995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2998230328%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g2995629967%_))))
                                     (_%g2995430332%_ _%tgt29736%_)))
                                 _%init2989529934%_))))))
                (_%loop2989029914%_ _%target2988729908%_ '()))
              (_%g2988429901%_ _%g2988529905%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2988429901%_
                                             _%g2988529905%_)))))
                                (_%g2988330336%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3033930342%_
                                                   _%g3034030345%_)
                                            (cons _%g3033930342%_
                                                  _%g3034030345%_))
                                          '()
                                          _%L29797%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2982429863%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2981929843%_
                                                    _%target2981629837%_
                                                    '()))
                                                 (_%g2981329830%_
                                                  _%g2981429834%_)))))
                                       (_%g2981329830%_ _%g2981429834%_)))))
                           (_%g2981230348%_
                            (gx#gentemps
                             (foldr (lambda (_%g3035130354%_ _%g3035230357%_)
                                      (cons _%g3035130354%_ _%g3035230357%_))
                                    '()
                                    _%L29797%_)))))
                       _%var2975429793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2974929773%_
                                               _%target2974629767%_
                                               '()))
                                            (_%g2974329760%_
                                             _%g2974429764%_)))))
                                  (_%g2974329760%_ _%g2974429764%_)))))
                      (_%g2974230360%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29738%_)))))
                 (_%generate-simple-vector29101%_
                  (lambda (_%tgt29559%_
                           _%body29561%_
                           _%start29562%_
                           _%ref29563%_
                           _%K29564%_
                           _%E29565%_)
                    (let _%recur29567%_ ((_%rest29570%_ _%body29561%_)
                                         (_%off29572%_ _%start29562%_))
                      (let* ((_%__stx3907039071%_ _%rest29570%_)
                             (_%g2957529587%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3907039071%_))))
                        (let ((_%__kont3907339074%_
                               (lambda (_%L29615%_ _%L29617%_)
                                 (let* ((_%g2963229655%_
                                         (lambda (_%g2963329651%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2963329651%_)))
                                        (_%g2963129728%_
                                         (lambda (_%g2963329659%_)
                                           (if (gx#stx-pair? _%g2963329659%_)
                                               (let ((_%e2963829662%_
                                                      (gx#syntax-e
                                                       _%g2963329659%_)))
                                                 (let ((_%hd2963929666%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2963829662%_)))
                                                       (_%tl2964029669%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2963829662%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2964029669%_)
                                                       (let ((_%e2964129672%_
                                                              (gx#syntax-e
                                                               _%tl2964029669%_)))
                                                         (let ((_%hd2964229676%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2964129672%_)))
                       (_%tl2964329679%_
                        (let () (declare (not safe)) (##cdr _%e2964129672%_))))
                   (if (gx#stx-pair? _%tl2964329679%_)
                       (let ((_%e2964429682%_ (gx#syntax-e _%tl2964329679%_)))
                         (let ((_%hd2964529686%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2964429682%_)))
                               (_%tl2964629689%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2964429682%_))))
                           (if (gx#stx-pair? _%tl2964629689%_)
                               (let ((_%e2964729692%_
                                      (gx#syntax-e _%tl2964629689%_)))
                                 (let ((_%hd2964829696%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2964729692%_)))
                                       (_%tl2964929699%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2964729692%_))))
                                   (if (gx#stx-null? _%tl2964929699%_)
                                       ((lambda (_%L29702%_
                                                 _%L29704%_
                                                 _%L29705%_
                                                 _%L29706%_)
                                          (cons 'let
                                                (cons (cons (cons _%L29706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%L29702%_
                                      (cons _%L29705%_ (cons _%L29704%_ '())))
                                '()))
                    '())
              (cons (_%generate129098%_
                     _%L29706%_
                     _%L29617%_
                     (_%recur29567%_ _%L29615%_ (fx1+ _%off29572%_))
                     _%E29565%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd2964829696%_
                                        _%hd2964529686%_
                                        _%hd2964229676%_
                                        _%hd2963929666%_)
                                       (_%g2963229655%_ _%g2963329659%_))))
                               (_%g2963229655%_ _%g2963329659%_))))
                       (_%g2963229655%_ _%g2963329659%_))))
               (_%g2963229655%_ _%g2963329659%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2963229655%_
                                                _%g2963329659%_)))))
                                   (_%g2963129728%_
                                    (list (gx#genident 'e)
                                          _%tgt29559%_
                                          _%off29572%_
                                          _%ref29563%_)))))
                              (_%__kont3907539076%_ (lambda () _%K29564%_)))
                          (if (gx#stx-pair? _%__stx3907039071%_)
                              (let ((_%e2957929605%_
                                     (gx#syntax-e _%__stx3907039071%_)))
                                (let ((_%tl2958129612%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2957929605%_)))
                                      (_%hd2958029609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2957929605%_))))
                                  (_%__kont3907339074%_
                                   _%tl2958129612%_
                                   _%hd2958029609%_)))
                              (_%__kont3907539076%_)))))))
                 (_%generate-list-vector29102%_
                  (lambda (_%tgt29451%_
                           _%body29453%_
                           _%->list29454%_
                           _%K29455%_
                           _%E29456%_)
                    (let* ((_%g2945829466%_
                            (lambda (_%g2945929462%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2945929462%_)))
                           (_%g2945729555%_
                            (lambda (_%g2945929470%_)
                              ((lambda (_%L29473%_)
                                 (let* ((_%g2948529493%_
                                         (lambda (_%g2948629489%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2948629489%_)))
                                        (_%g2948429551%_
                                         (lambda (_%g2948629497%_)
                                           ((lambda (_%L29500%_)
                                              (let* ((_%g2951329521%_
                                                      (lambda (_%g2951429517%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2951429517%_)))
                                                     (_%g2951229543%_
                                                      (lambda (_%g2951429525%_)
                                                        ((lambda (_%L29528%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%L29473%_ (cons _%L29528%_ '()))
                                     '())
                               (cons (_%generate129098%_
                                      _%L29473%_
                                      _%body29453%_
                                      _%K29455%_
                                      _%E29456%_)
                                     '()))))
                 _%g2951429525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2951229543%_
                                                 (let ((_%$e29547%_
                                                        _%->list29454%_))
                                                   (if (eq? 'values->list
                                                            _%$e29547%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%L29500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29547%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%L29500%_ '()))
                   (if (eq? 'struct->list _%$e29547%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%L29500%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29091%_
                        _%->list29454%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2948629497%_))))
                                   (_%g2948429551%_ _%tgt29451%_)))
                               _%g2945929470%_))))
                      (_%g2945729555%_ (gx#genident 'e)))))
                 (_%generate-struct29103%_
                  (lambda (_%info29322%_
                           _%tgt29324%_
                           _%body29325%_
                           _%K29326%_
                           _%E29327%_)
                    (let* ((_%__stx3908639087%_ _%body29325%_)
                           (_%g2933029353%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3908639087%_))))
                      (let ((_%__kont3908939090%_
                             (lambda (_%L29430%_)
                               (let ((_%fields29444%_
                                      (_%struct-field-accessors29105%_
                                       _%info29322%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39840
                                                          _%info29322%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39840
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39840
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39840
                                                          'predicate)))
                                                   (cons _%tgt29324%_ '()))
                                             (cons (_%generate-simple-struct-body29104%_
                                                    _%info29322%_
                                                    _%tgt29324%_
                                                    _%L29430%_
                                                    _%K29326%_
                                                    _%E29327%_)
                                                   (cons _%E29327%_ '())))))))
                            (_%__kont3909139092%_
                             (lambda (_%L29384%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39841
                                                        _%info29322%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39841
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39841
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39841
                                                        'predicate)))
                                                 (cons _%tgt29324%_ '()))
                                           (cons (_%generate-list-vector29102%_
                                                  _%tgt29324%_
                                                  _%L29384%_
                                                  'struct->list
                                                  _%K29326%_
                                                  _%E29327%_)
                                                 (cons _%E29327%_ '())))))))
                        (if (gx#stx-pair? _%__stx3908639087%_)
                            (let ((_%e2933329406%_
                                   (gx#syntax-e _%__stx3908639087%_)))
                              (let ((_%tl2933529413%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2933329406%_)))
                                    (_%hd2933429410%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2933329406%_))))
                                (if (gx#stx-datum? _%hd2933429410%_)
                                    (let ((_%e2933629416%_
                                           (gx#stx-e _%hd2933429410%_)))
                                      (if (equal? _%e2933629416%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2933529413%_)
                                              (let ((_%e2933729420%_
                                                     (gx#syntax-e
                                                      _%tl2933529413%_)))
                                                (let ((_%tl2933929427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2933729420%_)))
                                                      (_%hd2933829424%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2933729420%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2933929427%_)
                                                      (_%__kont3908939090%_
                                                       _%hd2933829424%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2933029353%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2933029353%_)))
                                          (if (equal? _%e2933629416%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2933529413%_)
                                                  (let ((_%e2934529374%_
                                                         (gx#syntax-e
                                                          _%tl2933529413%_)))
                                                    (let ((_%tl2934729381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2934529374%_)))
                                                          (_%hd2934629378%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2934529374%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2934729381%_)
                                                          (_%__kont3909139092%_
                                                           _%hd2934629378%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2933029353%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2933029353%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2933029353%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2933029353%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2933029353%_)))))))
                 (_%generate-simple-struct-body29104%_
                  (lambda (_%info29242%_
                           _%tgt29244%_
                           _%body29245%_
                           _%K29246%_
                           _%E29247%_)
                    (let _%recur29249%_ ((_%rest29252%_ _%body29245%_)
                                         (_%fields29254%_
                                          (_%struct-field-accessors29105%_
                                           _%info29242%_)))
                      (let* ((_%__stx3913639137%_ _%rest29252%_)
                             (_%g2925729269%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3913639137%_))))
                        (let ((_%__kont3913939140%_
                               (lambda (_%L29297%_ _%L29299%_)
                                 (if (null? _%fields29254%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29091%_
                                      _%info29242%_
                                      (let ((__obj39842 _%info29242%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39842
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39842
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39842
                                             'name))))
                                     (let ((_%$tgt29314%_ (gx#genident 'e))
                                           (_%getf29316%_
                                            (car _%fields29254%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29314%_
                                                               (cons (cons _%getf29316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29244%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129098%_
                                                          _%$tgt29314%_
                                                          _%L29299%_
                                                          (_%recur29249%_
                                                           _%L29297%_
                                                           (cdr _%fields29254%_))
                                                          _%E29247%_)
                                                         '())))))))
                              (_%__kont3914139142%_ (lambda () _%K29246%_)))
                          (if (gx#stx-pair? _%__stx3913639137%_)
                              (let ((_%e2926129287%_
                                     (gx#syntax-e _%__stx3913639137%_)))
                                (let ((_%tl2926329294%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2926129287%_)))
                                      (_%hd2926229291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2926129287%_))))
                                  (_%__kont3913939140%_
                                   _%tl2926329294%_
                                   _%hd2926229291%_)))
                              (_%__kont3914139142%_)))))))
                 (_%struct-field-accessors29105%_
                  (lambda (_%info29223%_)
                    (let _%recur29226%_ ((_%next29229%_
                                          (cons _%info29223%_ '())))
                      (if (null? _%next29229%_)
                          '()
                          (let ((_%ti29232%_ (car _%next29229%_)))
                            (let ((__tmp39874
                                   (_%recur29226%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39843 _%ti29232%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39843
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39843
                                                  '3
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39843
                                                'super))))))
                                  (__tmp39873
                                   (map (lambda (_%slot29235%_)
                                          (let ((_%$e29238%_
                                                 (agetq _%slot29235%_
                                                        (let ((__obj39844
                                                               _%ti29232%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39844
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39844 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39844
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29238%_
                                                _%$e29238%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29091%_
                                                 _%info29223%_
                                                 _%slot29235%_))))
                                        (let ((__obj39845 _%ti29232%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39845
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39845
                                                 '4
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39845
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39874 __tmp39873)))))))
                 (_%generate-class29106%_
                  (lambda (_%info29216%_
                           _%tgt29218%_
                           _%body29219%_
                           _%K29220%_
                           _%E29221%_)
                    (cons 'if
                          (cons (cons (let ((__obj39846 _%info29216%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39846
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39846
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39846
                                             'predicate)))
                                      (cons _%tgt29218%_ '()))
                                (cons (_%generate-class-body29107%_
                                       _%info29216%_
                                       _%tgt29218%_
                                       _%body29219%_
                                       _%K29220%_
                                       _%E29221%_)
                                      (cons _%E29221%_ '()))))))
                 (_%generate-class-body29107%_
                  (lambda (_%info29109%_
                           _%tgt29111%_
                           _%body29112%_
                           _%K29113%_
                           _%E29114%_)
                    (let _%recur29116%_ ((_%rest29119%_ _%body29112%_))
                      (let* ((_%__stx3915239153%_ _%rest29119%_)
                             (_%g2912329139%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3915239153%_))))
                        (let ((_%__kont3915539156%_
                               (lambda (_%L29177%_ _%L29179%_ _%L29180%_)
                                 (let ((_%$e29200%_
                                        (agetq (let ((__tmp39875
                                                      (keyword->string
                                                       (gx#stx-e _%L29180%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp39875))
                                               (let ((__obj39847
                                                      _%info29109%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39847
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39847
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39847
                                                      'unchecked-accessors))))))
                                   (if _%$e29200%_
                                       ((lambda (_%getf29204%_)
                                          (let ((_%$tgt29207%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29204%_ (cons _%tgt29111%_ '()))
                                  '()))
                      '())
                (cons (_%generate129098%_
                       _%$tgt29207%_
                       _%L29179%_
                       (_%recur29116%_ _%L29177%_)
                       _%E29114%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29200%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29091%_
                                        _%info29109%_
                                        _%L29180%_)))))
                              (_%__kont3915739158%_ (lambda () _%K29113%_)))
                          (if (gx#stx-pair? _%__stx3915239153%_)
                              (let ((_%e2912829157%_
                                     (gx#syntax-e _%__stx3915239153%_)))
                                (let ((_%tl2913029164%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2912829157%_)))
                                      (_%hd2912929161%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2912829157%_))))
                                  (if (gx#stx-pair? _%tl2913029164%_)
                                      (let ((_%e2913129167%_
                                             (gx#syntax-e _%tl2913029164%_)))
                                        (let ((_%tl2913329174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2913129167%_)))
                                              (_%hd2913229171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2913129167%_))))
                                          (_%__kont3915539156%_
                                           _%tl2913329174%_
                                           _%hd2913229171%_
                                           _%hd2912929161%_)))
                                      (_%__kont3915739158%_))))
                              (_%__kont3915739158%_))))))))
          (_%generate129098%_
           _%tgt29093%_
           _%ptree29094%_
           _%K29095%_
           _%E29096%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx27904%_ _%tgt-lst27906%_ _%clauses27907%_)
        (letrec ((_%parse-body27909%_
                  (lambda (_%hd-len28913%_)
                    (let _%lp28916%_ ((_%rest28919%_ _%clauses27907%_)
                                      (_%r28921%_ '()))
                      (let* ((_%__stx3920239203%_ _%rest28919%_)
                             (_%g2892428936%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3920239203%_))))
                        (let ((_%__kont3920539206%_
                               (lambda (_%L28964%_ _%L28966%_)
                                 (let* ((_%__stx3917439175%_ _%L28966%_)
                                        (_%g2898328999%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3917439175%_))))
                                   (let ((_%__kont3917739178%_
                                          (lambda (_%L29068%_)
                                            (if (gx#stx-null? _%L28964%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L29068%_)
                                 (let ((_%$e29079%_
                                        (gx#stx-source _%L28966%_)))
                                   (if _%$e29079%_
                                       _%$e29079%_
                                       (gx#stx-source _%stx27904%_))))
                                '())))
              _%r28921%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx27904%_
                                                 _%L28966%_))))
                                         (_%__kont3917939180%_
                                          (lambda (_%L29027%_ _%L29029%_)
                                            (_%lp28916%_
                                             _%L28964%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2904129043%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2904129043%_
                           _%stx27904%_))
                        _%L29029%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _%L29027%_)
                              (let ((_%$e29047%_ (gx#stx-source _%L28966%_)))
                                (if _%$e29047%_
                                    _%$e29047%_
                                    (gx#stx-source _%stx27904%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r28921%_))))
                                         (_%__kont3918139182%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx27904%_
                                             _%L28966%_))))
                                     (let* ((_%__match3919939200%_
                                             (lambda (_%e2899129017%_
                                                      _%hd2899229021%_
                                                      _%tl2899329024%_)
                                               (let ((_%L29027%_
                                                      _%tl2899329024%_)
                                                     (_%L29029%_
                                                      _%hd2899229021%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29029%_)
                                                          (fx= (gx#stx-length
                                                                _%L29029%_)
                                                               _%hd-len28913%_)
                                                          (gx#stx-list?
                                                           _%L29027%_)
                                                          (not (gx#stx-null?
                                                                _%L29027%_)))
                                                     (_%__kont3917939180%_
                                                      _%L29027%_
                                                      _%L29029%_)
                                                     (_%__kont3918139182%_)))))
                                            (_%__match3919339194%_
                                             (lambda (_%e2898629058%_
                                                      _%hd2898729062%_
                                                      _%tl2898829065%_)
                                               (let ((_%L29068%_
                                                      _%tl2898829065%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29068%_)
                                                          (not (gx#stx-null?
                                                                _%L29068%_)))
                                                     (_%__kont3917739178%_
                                                      _%L29068%_)
                                                     (_%__match3919939200%_
                                                      _%e2898629058%_
                                                      _%hd2898729062%_
                                                      _%tl2898829065%_))))))
                                       (if (gx#stx-pair? _%__stx3917439175%_)
                                           (let ((_%e2898629058%_
                                                  (gx#syntax-e
                                                   _%__stx3917439175%_)))
                                             (let ((_%tl2898829065%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2898629058%_)))
                                                   (_%hd2898729062%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2898629058%_))))
                                               (if (gx#identifier?
                                                    _%hd2898729062%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39876_|
                                                        _%hd2898729062%_)
                                                       (_%__match3919339194%_
                                                        _%e2898629058%_
                                                        _%hd2898729062%_
                                                        _%tl2898829065%_)
                                                       (_%__match3919939200%_
                                                        _%e2898629058%_
                                                        _%hd2898729062%_
                                                        _%tl2898829065%_))
                                                   (_%__match3919939200%_
                                                    _%e2898629058%_
                                                    _%hd2898729062%_
                                                    _%tl2898829065%_))))
                                           (_%__kont3918139182%_)))))))
                              (_%__kont3920739208%_ (lambda () _%r28921%_)))
                          (if (gx#stx-pair? _%__stx3920239203%_)
                              (let ((_%e2892828954%_
                                     (gx#syntax-e _%__stx3920239203%_)))
                                (let ((_%tl2893028961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2892828954%_)))
                                      (_%hd2892928958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2892828954%_))))
                                  (_%__kont3920539206%_
                                   _%tl2893028961%_
                                   _%hd2892928958%_)))
                              (_%__kont3920739208%_)))))))
                 (_%generate-body27911%_
                  (lambda (_%body28615%_)
                    (let* ((_%g2861828626%_
                            (lambda (_%g2861928622%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2861928622%_)))
                           (_%g2861728909%_
                            (lambda (_%g2861928630%_)
                              ((lambda (_%L28633%_)
                                 (let* ((_%g2864528662%_
                                         (lambda (_%g2864628658%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2864628658%_)))
                                        (_%g2864428905%_
                                         (lambda (_%g2864628666%_)
                                           (if (gx#stx-pair/null?
                                                _%g2864628666%_)
                                               (let ((_g39877_
                                                      (gx#syntax-split-splice
                                                       _%g2864628666%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39878_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39877_)
                        (##values-length _g39877_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39878_ 2)))
                 (error "Context expects 2 values" _g39878_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2864828669%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39877_
                                                             0)))
                                                         (_%tl2865028672%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39877_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2865028672%_)
                                                         (letrec ((_%loop2865128675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2864928679%_ _%target2865528682%_)
                             (if (gx#stx-pair? _%hd2864928679%_)
                                 (let ((_%e2865228685%_
                                        (gx#syntax-e _%hd2864928679%_)))
                                   (let ((_%lp-hd2865328689%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2865228685%_)))
                                         (_%lp-tl2865428692%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2865228685%_))))
                                     (_%loop2865128675%_
                                      _%lp-tl2865428692%_
                                      (cons _%lp-hd2865328689%_
                                            _%target2865528682%_))))
                                 (let ((_%target2865628695%_
                                        (reverse _%target2865528682%_)))
                                   ((lambda (_%L28699%_)
                                      (let* ((_%g2871628733%_
                                              (lambda (_%g2871728729%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2871728729%_)))
                                             (_%g2871528901%_
                                              (lambda (_%g2871728737%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2871728737%_)
                                                    (let ((_g39879_
                                                           (gx#syntax-split-splice
                                                            _%g2871728737%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39880_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39879_)
                             (##values-length _g39879_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39880_ 2)))
                      (error "Context expects 2 values" _g39880_)))
                (let ((_%target2871928740%_
                       (let () (declare (not safe)) (##values-ref _g39879_ 0)))
                      (_%tl2872128743%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g39879_ 1))))
                  (if (gx#stx-null? _%tl2872128743%_)
                      (letrec ((_%loop2872228746%_
                                (lambda (_%hd2872028750%_
                                         _%fail-diagnostic2872628753%_)
                                  (if (gx#stx-pair? _%hd2872028750%_)
                                      (let ((_%e2872328756%_
                                             (gx#syntax-e _%hd2872028750%_)))
                                        (let ((_%lp-hd2872428760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2872328756%_)))
                                              (_%lp-tl2872528763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2872328756%_))))
                                          (_%loop2872228746%_
                                           _%lp-tl2872528763%_
                                           (cons _%lp-hd2872428760%_
                                                 _%fail-diagnostic2872628753%_))))
                                      (let ((_%fail-diagnostic2872728766%_
                                             (reverse _%fail-diagnostic2872628753%_)))
                                        ((lambda (_%L28770%_)
                                           (let* ((_%g2878728795%_
                                                   (lambda (_%g2878828791%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2878828791%_)))
                                                  (_%g2878628881%_
                                                   (lambda (_%g2878828799%_)
                                                     ((lambda (_%L28802%_)
                                                        (let* ((_%g2881528823%_
                                                                (lambda (_%g2881628819%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2881628819%_)))
                       (_%g2881428877%_
                        (lambda (_%g2881628827%_)
                          ((lambda (_%L28830%_)
                             (let* ((_%g2884328851%_
                                     (lambda (_%g2884428847%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2884428847%_)))
                                    (_%g2884228873%_
                                     (lambda (_%g2884428855%_)
                                       ((lambda (_%L28858%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%L28858%_ '()))))
                                        _%g2884428855%_))))
                               (_%g2884228873%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%L28633%_
                                                         (cons _%L28802%_ '()))
                                                   '())
                                             (cons _%L28830%_ '())))
                                 (gx#stx-source _%stx27904%_)))))
                           _%g2881628827%_))))
                  (_%g2881428877%_
                   (_%generate-clauses27912%_
                    _%body28615%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%L28633%_ '()) '())))))))
              _%g2878828799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2878628881%_
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
                                     (foldr (lambda (_%g2888428889%_
                                                     _%g2888528892%_)
                                              (cons _%g2888428889%_
                                                    _%g2888528892%_))
                                            (foldr (lambda (_%g2888628895%_
                                                            _%g2888728898%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2888628895%_ '()))
                   _%g2888728898%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%L28770%_)
                                            _%L28699%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27904%_)))))
                                         _%fail-diagnostic2872728766%_))))))
                        (_%loop2872228746%_ _%target2871928740%_ '()))
                      (_%g2871628733%_ _%g2871728737%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2871628733%_
                                                     _%g2871728737%_)))))
                                        (_%g2871528901%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses27907%_))))
                                    _%target2865628695%_))))))
                   (_%loop2865128675%_ _%target2864828669%_ '()))
                 (_%g2864528662%_ _%g2864628666%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2864528662%_
                                                _%g2864628666%_)))))
                                   (_%g2864428905%_ _%tgt-lst27906%_)))
                               _%g2861928630%_))))
                      (_%g2861728909%_ (gx#genident 'E)))))
                 (_%generate-clauses27912%_
                  (lambda (_%rest28267%_ _%E28269%_)
                    (let* ((_%__stx3921839219%_ _%rest28267%_)
                           (_%g2827328289%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3921839219%_))))
                      (let ((_%__kont3922139222%_
                             (lambda (_%L28523%_)
                               (let* ((_%g2853428552%_
                                       (lambda (_%g2853528548%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2853528548%_)))
                                      (_%g2853328607%_
                                       (lambda (_%g2853528556%_)
                                         (if (gx#stx-pair? _%g2853528556%_)
                                             (let ((_%e2853828559%_
                                                    (gx#syntax-e
                                                     _%g2853528556%_)))
                                               (let ((_%hd2853928563%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2853828559%_)))
                                                     (_%tl2854028566%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2853828559%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2854028566%_)
                                                     (let ((_%e2854128569%_
                                                            (gx#syntax-e
                                                             _%tl2854028566%_)))
                                                       (let ((_%hd2854228573%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2854128569%_)))
                     (_%tl2854328576%_
                      (let () (declare (not safe)) (##cdr _%e2854128569%_))))
                 (if (gx#stx-pair? _%tl2854328576%_)
                     (let ((_%e2854428579%_ (gx#syntax-e _%tl2854328576%_)))
                       (let ((_%hd2854528583%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2854428579%_)))
                             (_%tl2854628586%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2854428579%_))))
                         (if (gx#stx-null? _%tl2854628586%_)
                             ((lambda (_%L28589%_ _%L28591%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28591%_)
                                                      (_%generate127913%_
                                                       _%L28591%_
                                                       _%L28589%_
                                                       _%E28269%_)
                                                      _%L28589%_)
                                                  '()))))
                              _%hd2854528583%_
                              _%hd2854228573%_)
                             (_%g2853428552%_ _%g2853528556%_))))
                     (_%g2853428552%_ _%g2853528556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2853428552%_
                                                      _%g2853528556%_))))
                                             (_%g2853428552%_
                                              _%g2853528556%_)))))
                                 (_%g2853328607%_ _%L28523%_))))
                            (_%__kont3922339224%_
                             (lambda (_%L28317%_ _%L28319%_)
                               (let* ((_%g2833228351%_
                                       (lambda (_%g2833328347%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2833328347%_)))
                                      (_%g2833128502%_
                                       (lambda (_%g2833328355%_)
                                         (if (gx#stx-pair? _%g2833328355%_)
                                             (let ((_%e2833728358%_
                                                    (gx#syntax-e
                                                     _%g2833328355%_)))
                                               (let ((_%hd2833828362%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2833728358%_)))
                                                     (_%tl2833928365%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2833728358%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2833928365%_)
                                                     (let ((_%e2834028368%_
                                                            (gx#syntax-e
                                                             _%tl2833928365%_)))
                                                       (let ((_%hd2834128372%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2834028368%_)))
                     (_%tl2834228375%_
                      (let () (declare (not safe)) (##cdr _%e2834028368%_))))
                 (if (gx#stx-pair? _%tl2834228375%_)
                     (let ((_%e2834328378%_ (gx#syntax-e _%tl2834228375%_)))
                       (let ((_%hd2834428382%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2834328378%_)))
                             (_%tl2834528385%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2834328378%_))))
                         (if (gx#stx-null? _%tl2834528385%_)
                             ((lambda (_%L28388%_ _%L28390%_ _%L28391%_)
                                (if (gx#stx-e _%L28390%_)
                                    (let* ((_%g2840828423%_
                                            (lambda (_%g2840928419%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2840928419%_)))
                                           (_%g2840728468%_
                                            (lambda (_%g2840928427%_)
                                              (if (gx#stx-pair?
                                                   _%g2840928427%_)
                                                  (let ((_%e2841228430%_
                                                         (gx#syntax-e
                                                          _%g2840928427%_)))
                                                    (let ((_%hd2841328434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2841228430%_)))
                                                          (_%tl2841428437%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2841228430%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2841428437%_)
                                                          (let ((_%e2841528440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2841428437%_)))
                    (let ((_%hd2841628444%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2841528440%_)))
                          (_%tl2841728447%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2841528440%_))))
                      (if (gx#stx-null? _%tl2841728447%_)
                          ((lambda (_%L28450%_ _%L28452%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%L28391%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28452%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L28450%_ '()))))
                           _%hd2841628444%_
                           _%hd2841328434%_)
                          (_%g2840828423%_ _%g2840928427%_))))
                  (_%g2840828423%_ _%g2840928427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2840828423%_
                                                   _%g2840928427%_)))))
                                      (_%g2840728468%_
                                       (list (_%generate127913%_
                                              _%L28390%_
                                              _%L28388%_
                                              _%E28269%_)
                                             (_%generate-clauses27912%_
                                              _%L28317%_
                                              (cons _%L28391%_ '())))))
                                    (let* ((_%g2847228480%_
                                            (lambda (_%g2847328476%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2847328476%_)))
                                           (_%g2847128498%_
                                            (lambda (_%g2847328484%_)
                                              ((lambda (_%L28487%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L28391%_
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
                             (cons _%L28388%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%L28487%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2847328484%_))))
                                      (_%g2847128498%_
                                       (_%generate-clauses27912%_
                                        _%L28317%_
                                        (cons _%L28391%_ '()))))))
                              _%hd2834428382%_
                              _%hd2834128372%_
                              _%hd2833828362%_)
                             (_%g2833228351%_ _%g2833328355%_))))
                     (_%g2833228351%_ _%g2833328355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2833228351%_
                                                      _%g2833328355%_))))
                                             (_%g2833228351%_
                                              _%g2833328355%_)))))
                                 (_%g2833128502%_ _%L28319%_))))
                            (_%__kont3922539226%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28269%_ '()))))))
                        (if (gx#stx-pair? _%__stx3921839219%_)
                            (let ((_%e2827628513%_
                                   (gx#syntax-e _%__stx3921839219%_)))
                              (let ((_%tl2827828520%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2827628513%_)))
                                    (_%hd2827728517%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2827628513%_))))
                                (if (gx#stx-null? _%tl2827828520%_)
                                    (_%__kont3922139222%_ _%hd2827728517%_)
                                    (_%__kont3922339224%_
                                     _%tl2827828520%_
                                     _%hd2827728517%_))))
                            (_%__kont3922539226%_))))))
                 (_%generate127913%_
                  (lambda (_%clause27915%_ _%body27917%_ _%E27918%_)
                    (let* ((_%g2792027944%_
                            (lambda (_%g2792127940%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2792127940%_)))
                           (_%g2791928263%_
                            (lambda (_%g2792127948%_)
                              (if (gx#stx-pair? _%g2792127948%_)
                                  (let ((_%e2792427951%_
                                         (gx#syntax-e _%g2792127948%_)))
                                    (let ((_%hd2792527955%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2792427951%_)))
                                          (_%tl2792627958%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2792427951%_))))
                                      (if (gx#stx-pair? _%tl2792627958%_)
                                          (let ((_%e2792727961%_
                                                 (gx#syntax-e
                                                  _%tl2792627958%_)))
                                            (let ((_%hd2792827965%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2792727961%_)))
                                                  (_%tl2792927968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2792727961%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2792827965%_)
                                                  (let ((_g39881_
                                                         (gx#syntax-split-splice
                                                          _%hd2792827965%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39882_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39881_)
                           (##values-length _g39881_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39882_ 2)))
                    (error "Context expects 2 values" _g39882_)))
              (let ((_%target2793027971%_
                     (let () (declare (not safe)) (##values-ref _g39881_ 0)))
                    (_%tl2793227974%_
                     (let () (declare (not safe)) (##values-ref _g39881_ 1))))
                (if (gx#stx-null? _%tl2793227974%_)
                    (letrec ((_%loop2793327977%_
                              (lambda (_%hd2793127981%_ _%var2793727984%_)
                                (if (gx#stx-pair? _%hd2793127981%_)
                                    (let ((_%e2793427987%_
                                           (gx#syntax-e _%hd2793127981%_)))
                                      (let ((_%lp-hd2793527991%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2793427987%_)))
                                            (_%lp-tl2793627994%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2793427987%_))))
                                        (_%loop2793327977%_
                                         _%lp-tl2793627994%_
                                         (cons _%lp-hd2793527991%_
                                               _%var2793727984%_))))
                                    (let ((_%var2793827997%_
                                           (reverse _%var2793727984%_)))
                                      (if (gx#stx-null? _%tl2792927968%_)
                                          ((lambda (_%L28001%_ _%L28003%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2802428027%_
                                                                _%g2802528030%_)
                                                         (cons _%g2802428027%_
                                                               _%g2802528030%_))
                                                       '()
                                                       _%L28001%_)
                                                _%stx27904%_)
                                               (let* ((_%g2803328041%_
                                                       (lambda (_%g2803428037%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2803428037%_)))
                                                      (_%g2803228135%_
                                                       (lambda (_%g2803428045%_)
                                                         ((lambda (_%L28048%_)
                                                            (let* ((_%g2806128069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2806228065%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2806228065%_)))
                           (_%g2806028131%_
                            (lambda (_%g2806228073%_)
                              ((lambda (_%L28076%_)
                                 (let* ((_%g2808928097%_
                                         (lambda (_%g2809028093%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2809028093%_)))
                                        (_%g2808828119%_
                                         (lambda (_%g2809028101%_)
                                           ((lambda (_%L28104%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L28003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L28104%_ '()))
                   (cons _%L28048%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27904%_)))
                                            _%g2809028101%_))))
                                   (_%g2808828119%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2812228125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2812328128%_)
                  (cons _%g2812228125%_ _%g2812328128%_))
                '()
                _%L28001%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L28076%_ '())))
                                     (gx#stx-source _%stx27904%_)))))
                               _%g2806228073%_))))
                      (_%g2806028131%_ _%body27917%_)))
                  _%g2803428045%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2803228135%_
                                                  (let _%recur28139%_ ((_%rest28142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause27915%_)
                               (_%rest-targets28144%_ _%tgt-lst27906%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3924439245%_
                                                            _%rest28142%_)
                                                           (_%g2814728159%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3924439245%_))))
                                                      (let ((_%__kont3924739248%_
                                                             (lambda (_%L28195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L28197%_)
                       (let* ((_%g2821228224%_
                               (lambda (_%g2821328220%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2821328220%_)))
                              (_%g2821128255%_
                               (lambda (_%g2821328228%_)
                                 (if (gx#stx-pair? _%g2821328228%_)
                                     (let ((_%e2821628231%_
                                            (gx#syntax-e _%g2821328228%_)))
                                       (let ((_%hd2821728235%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2821628231%_)))
                                             (_%tl2821828238%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2821628231%_))))
                                         ((lambda (_%L28241%_ _%L28243%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx27904%_
                                             _%L28243%_
                                             _%L28197%_
                                             (_%recur28139%_
                                              _%L28195%_
                                              _%L28241%_)
                                             _%E27918%_))
                                          _%tl2821828238%_
                                          _%hd2821728235%_)))
                                     (_%g2821228224%_ _%g2821328228%_)))))
                         (_%g2821128255%_ _%rest-targets28144%_))))
                    (_%__kont3924939250%_
                     (lambda ()
                       (cons _%L28003%_
                             (foldr (lambda (_%g2816928172%_ _%g2817028175%_)
                                      (cons _%g2816928172%_ _%g2817028175%_))
                                    '()
                                    _%L28001%_)))))
                (if (gx#stx-pair? _%__stx3924439245%_)
                    (let ((_%e2815128185%_ (gx#syntax-e _%__stx3924439245%_)))
                      (let ((_%tl2815328192%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2815128185%_)))
                            (_%hd2815228189%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2815128185%_))))
                        (_%__kont3924739248%_
                         _%tl2815328192%_
                         _%hd2815228189%_)))
                    (_%__kont3924939250%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2793827997%_
                                           _%hd2792527955%_)
                                          (_%g2792027944%_
                                           _%g2792127948%_)))))))
                      (_%loop2793327977%_ _%target2793027971%_ '()))
                    (_%g2792027944%_ _%g2792127948%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2792027944%_
                                                   _%g2792127948%_))))
                                          (_%g2792027944%_ _%g2792127948%_))))
                                  (_%g2792027944%_ _%g2792127948%_)))))
                      (_%g2791928263%_
                       (list (gx#genident 'K)
                             (let ((__tmp39883
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause27915%_)))
                               (declare (not safe))
                               (##apply append __tmp39883))))))))
          (_%generate-body27911%_
           (_%parse-body27909%_ (gx#stx-length _%tgt-lst27906%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27806%_ _%tgt27808%_ _%clauses27809%_)
        (letrec ((_%reclause27811%_
                  (lambda (_%clause27814%_)
                    (let* ((_%__stx3926039261%_ _%clause27814%_)
                           (_%g2781927834%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3926039261%_))))
                      (let ((_%__kont3926339264%_ (lambda () _%clause27814%_))
                            (_%__kont3926539266%_
                             (lambda (_%L27862%_ _%L27864%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L27864%_ '()) _%L27862%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3926739268%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27806%_
                                _%clause27814%_))))
                        (if (gx#stx-pair? _%__stx3926039261%_)
                            (let ((_%e2782127886%_
                                   (gx#syntax-e _%__stx3926039261%_)))
                              (let ((_%tl2782327893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2782127886%_)))
                                    (_%hd2782227890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2782127886%_))))
                                (if (gx#identifier? _%hd2782227890%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39884_|
                                         _%hd2782227890%_)
                                        (_%__kont3926339264%_)
                                        (_%__kont3926539266%_
                                         _%tl2782327893%_
                                         _%hd2782227890%_))
                                    (_%__kont3926539266%_
                                     _%tl2782327893%_
                                     _%hd2782227890%_))))
                            (_%__kont3926739268%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27806%_
           (cons _%tgt27808%_ '())
           (gx#stx-map _%reclause27811%_ _%clauses27809%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35161%_)
        (let* ((_%__stx3928839289%_ _%stx35161%_)
               (_%g3516635195%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3928839289%_))))
          (let ((_%__kont3929139292%_
                 (lambda (_%L35435%_)
                   (let* ((_%g3544835456%_
                           (lambda (_%g3544935452%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3544935452%_)))
                          (_%g3544735509%_
                           (lambda (_%g3544935460%_)
                             ((lambda (_%L35463%_)
                                (let* ((_%g3547535483%_
                                        (lambda (_%g3547635479%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3547635479%_)))
                                       (_%g3547435505%_
                                        (lambda (_%g3547635487%_)
                                          ((lambda (_%L35490%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L35463%_ '())
                                                         (cons _%L35490%_
                                                               '()))))
                                           _%g3547635487%_))))
                                  (_%g3547435505%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35463%_ _%L35435%_))
                                    (gx#stx-source _%stx35161%_)))))
                              _%g3544935460%_))))
                     (_%g3544735509%_ (gx#genident 'e)))))
                (_%__kont3929339294%_
                 (lambda (_%L35330%_)
                   (let* ((_%g3534335351%_
                           (lambda (_%g3534435347%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3534435347%_)))
                          (_%g3534235404%_
                           (lambda (_%g3534435355%_)
                             ((lambda (_%L35358%_)
                                (let* ((_%g3537035378%_
                                        (lambda (_%g3537135374%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3537135374%_)))
                                       (_%g3536935400%_
                                        (lambda (_%g3537135382%_)
                                          ((lambda (_%L35385%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%L35358%_
                                                         (cons _%L35385%_
                                                               '()))))
                                           _%g3537135382%_))))
                                  (_%g3536935400%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35358%_ _%L35330%_))
                                    (gx#stx-source _%stx35161%_)))))
                              _%g3534435355%_))))
                     (_%g3534235404%_ (gx#genident 'args)))))
                (_%__kont3929539296%_
                 (lambda (_%L35222%_ _%L35224%_)
                   (let* ((_%g3523835246%_
                           (lambda (_%g3523935242%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3523935242%_)))
                          (_%g3523735299%_
                           (lambda (_%g3523935250%_)
                             ((lambda (_%L35253%_)
                                (let* ((_%g3526535273%_
                                        (lambda (_%g3526635269%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3526635269%_)))
                                       (_%g3526435295%_
                                        (lambda (_%g3526635277%_)
                                          ((lambda (_%L35280%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L35253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L35224%_ '()))
                       '())
                 (cons _%L35280%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3526635277%_))))
                                  (_%g3526435295%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35161%_
                                    _%L35253%_
                                    _%L35222%_))))
                              _%g3523935250%_))))
                     (_%g3523735299%_ (gx#genident _%L35224%_))))))
            (let* ((_%__match3934139342%_
                    (lambda (_%e3518435202%_
                             _%hd3518535206%_
                             _%tl3518635209%_
                             _%e3518735212%_
                             _%hd3518835216%_
                             _%tl3518935219%_)
                      (let ((_%L35222%_ _%tl3518935219%_)
                            (_%L35224%_ _%hd3518835216%_))
                        (if (gx#stx-list? _%L35222%_)
                            (_%__kont3929539296%_ _%L35222%_ _%L35224%_)
                            (let () (declare (not safe)) (_%g3516635195%_))))))
                   (_%__match3932939330%_
                    (lambda (_%e3517635310%_
                             _%hd3517735314%_
                             _%tl3517835317%_
                             _%e3517935320%_
                             _%hd3518035324%_
                             _%tl3518135327%_)
                      (let ((_%L35330%_ _%tl3518135327%_))
                        (if (gx#stx-list? _%L35330%_)
                            (_%__kont3929339294%_ _%L35330%_)
                            (_%__match3934139342%_
                             _%e3517635310%_
                             _%hd3517735314%_
                             _%tl3517835317%_
                             _%e3517935320%_
                             _%hd3518035324%_
                             _%tl3518135327%_)))))
                   (_%__match3931339314%_
                    (lambda (_%e3516935415%_
                             _%hd3517035419%_
                             _%tl3517135422%_
                             _%e3517235425%_
                             _%hd3517335429%_
                             _%tl3517435432%_)
                      (let ((_%L35435%_ _%tl3517435432%_))
                        (if (gx#stx-list? _%L35435%_)
                            (_%__kont3929139292%_ _%L35435%_)
                            (_%__match3934139342%_
                             _%e3516935415%_
                             _%hd3517035419%_
                             _%tl3517135422%_
                             _%e3517235425%_
                             _%hd3517335429%_
                             _%tl3517435432%_))))))
              (if (gx#stx-pair? _%__stx3928839289%_)
                  (let ((_%e3516935415%_ (gx#syntax-e _%__stx3928839289%_)))
                    (let ((_%tl3517135422%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3516935415%_)))
                          (_%hd3517035419%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3516935415%_))))
                      (if (gx#stx-pair? _%tl3517135422%_)
                          (let ((_%e3517235425%_
                                 (gx#syntax-e _%tl3517135422%_)))
                            (let ((_%tl3517435432%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3517235425%_)))
                                  (_%hd3517335429%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3517235425%_))))
                              (if (gx#identifier? _%hd3517335429%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39885_|
                                       _%hd3517335429%_)
                                      (_%__match3931339314%_
                                       _%e3516935415%_
                                       _%hd3517035419%_
                                       _%tl3517135422%_
                                       _%e3517235425%_
                                       _%hd3517335429%_
                                       _%tl3517435432%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39886_|
                                           _%hd3517335429%_)
                                          (_%__match3932939330%_
                                           _%e3516935415%_
                                           _%hd3517035419%_
                                           _%tl3517135422%_
                                           _%e3517235425%_
                                           _%hd3517335429%_
                                           _%tl3517435432%_)
                                          (_%__match3934139342%_
                                           _%e3516935415%_
                                           _%hd3517035419%_
                                           _%tl3517135422%_
                                           _%e3517235425%_
                                           _%hd3517335429%_
                                           _%tl3517435432%_)))
                                  (_%__match3934139342%_
                                   _%e3516935415%_
                                   _%hd3517035419%_
                                   _%tl3517135422%_
                                   _%e3517235425%_
                                   _%hd3517335429%_
                                   _%tl3517435432%_))))
                          (let () (declare (not safe)) (_%g3516635195%_)))))
                  (let () (declare (not safe)) (_%g3516635195%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35517%_)
        (let* ((_%g3552035544%_
                (lambda (_%g3552135540%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3552135540%_)))
               (_%g3551935756%_
                (lambda (_%g3552135548%_)
                  (if (gx#stx-pair? _%g3552135548%_)
                      (let ((_%e3552435551%_ (gx#syntax-e _%g3552135548%_)))
                        (let ((_%hd3552535555%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3552435551%_)))
                              (_%tl3552635558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3552435551%_))))
                          (if (gx#stx-pair? _%tl3552635558%_)
                              (let ((_%e3552735561%_
                                     (gx#syntax-e _%tl3552635558%_)))
                                (let ((_%hd3552835565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3552735561%_)))
                                      (_%tl3552935568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3552735561%_))))
                                  (if (gx#stx-pair/null? _%hd3552835565%_)
                                      (let ((_g39887_
                                             (gx#syntax-split-splice
                                              _%hd3552835565%_
                                              '0)))
                                        (begin
                                          (let ((_g39888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39887_)
                                                       (##values-length
                                                        _g39887_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39888_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39888_)))
                                          (let ((_%target3553035571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39887_ 0)))
                                                (_%tl3553235574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39887_ 1))))
                                            (if (gx#stx-null? _%tl3553235574%_)
                                                (letrec ((_%loop3553335577%_
                                                          (lambda (_%hd3553135581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3553735584%_)
                    (if (gx#stx-pair? _%hd3553135581%_)
                        (let ((_%e3553435587%_ (gx#syntax-e _%hd3553135581%_)))
                          (let ((_%lp-hd3553535591%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3553435587%_)))
                                (_%lp-tl3553635594%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3553435587%_))))
                            (_%loop3553335577%_
                             _%lp-tl3553635594%_
                             (cons _%lp-hd3553535591%_ _%e3553735584%_))))
                        (let ((_%e3553835597%_ (reverse _%e3553735584%_)))
                          ((lambda (_%L35601%_ _%L35603%_)
                             (if (gx#stx-list? _%L35601%_)
                                 (let* ((_%g3562135638%_
                                         (lambda (_%g3562235634%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3562235634%_)))
                                        (_%g3562035744%_
                                         (lambda (_%g3562235642%_)
                                           (if (gx#stx-pair/null?
                                                _%g3562235642%_)
                                               (let ((_g39889_
                                                      (gx#syntax-split-splice
                                                       _%g3562235642%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39890_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39889_)
                        (##values-length _g39889_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39890_ 2)))
                 (error "Context expects 2 values" _g39890_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3562435645%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39889_
                                                             0)))
                                                         (_%tl3562635648%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39889_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3562635648%_)
                                                         (letrec ((_%loop3562735651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3562535655%_ _%$e3563135658%_)
                             (if (gx#stx-pair? _%hd3562535655%_)
                                 (let ((_%e3562835661%_
                                        (gx#syntax-e _%hd3562535655%_)))
                                   (let ((_%lp-hd3562935665%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3562835661%_)))
                                         (_%lp-tl3563035668%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3562835661%_))))
                                     (_%loop3562735651%_
                                      _%lp-tl3563035668%_
                                      (cons _%lp-hd3562935665%_
                                            _%$e3563135658%_))))
                                 (let ((_%$e3563235671%_
                                        (reverse _%$e3563135658%_)))
                                   ((lambda (_%L35675%_)
                                      (let* ((_%g3569135699%_
                                              (lambda (_%g3569235695%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3569235695%_)))
                                             (_%g3569035732%_
                                              (lambda (_%g3569235703%_)
                                                ((lambda (_%L35706%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _%L35603%_ _%L35675%_)
                         (foldr (lambda (_%g3572035724%_
                                         _%g3572135727%_
                                         _%g3572235729%_)
                                  (cons (cons _%g3572135727%_
                                              (cons _%g3572035724%_ '()))
                                        _%g3572235729%_))
                                '()
                                _%L35603%_
                                _%L35675%_))
                       (cons _%L35706%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3569235703%_))))
                                        (_%g3569035732%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35517%_
                                          (foldr (lambda (_%g3573535738%_
                                                          _%g3573635741%_)
                                                   (cons _%g3573535738%_
                                                         _%g3573635741%_))
                                                 '()
                                                 _%L35675%_)
                                          _%L35601%_))))
                                    _%$e3563235671%_))))))
                   (_%loop3562735651%_ _%target3562435645%_ '()))
                 (_%g3562135638%_ _%g3562235642%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3562135638%_
                                                _%g3562235642%_)))))
                                   (_%g3562035744%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3574735750%_
                                                     _%g3574835753%_)
                                              (cons _%g3574735750%_
                                                    _%g3574835753%_))
                                            '()
                                            _%L35603%_))))
                                 (_%g3552035544%_ _%g3552135548%_)))
                           _%tl3552935568%_
                           _%e3553835597%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3553335577%_
                                                   _%target3553035571%_
                                                   '()))
                                                (_%g3552035544%_
                                                 _%g3552135548%_)))))
                                      (_%g3552035544%_ _%g3552135548%_))))
                              (_%g3552035544%_ _%g3552135548%_))))
                      (_%g3552035544%_ _%g3552135548%_)))))
          (_%g3551935756%_ _%stx35517%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35762%_)
        (let* ((_%__stx3934439345%_ _%$stx35762%_)
               (_%g3576835851%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3934439345%_))))
          (let ((_%__kont3934739348%_
                 (lambda (_%L36181%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3619736200%_ _%g3619836203%_)
                                        (cons _%g3619736200%_ _%g3619836203%_))
                                      '()
                                      _%L36181%_)))))
                (_%__kont3935139352%_
                 (lambda (_%L36089%_ _%L36091%_ _%L36092%_ _%L36093%_)
                   (cons _%L36093%_
                         (cons (cons (cons _%L36092%_ (cons _%L36091%_ '()))
                                     '())
                               (foldr (lambda (_%g3611536118%_ _%g3611636121%_)
                                        (cons _%g3611536118%_ _%g3611636121%_))
                                      '()
                                      _%L36089%_)))))
                (_%__kont3935539356%_
                 (lambda (_%L35962%_ _%L35964%_ _%L35965%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3598735994%_ _%g3598835997%_)
                                        (cons _%g3598735994%_ _%g3598835997%_))
                                      '()
                                      _%L35964%_)
                               (cons (cons (foldr (lambda (_%g3598936000%_
                                                           _%g3599036003%_)
                                                    (cons _%g3598936000%_
                                                          _%g3599036003%_))
                                                  '()
                                                  _%L35965%_)
                                           (foldr (lambda (_%g3599136006%_
                                                           _%g3599236009%_)
                                                    (cons _%g3599136006%_
                                                          _%g3599236009%_))
                                                  '()
                                                  _%L35962%_))
                                     '()))))))
            (let* ((_%__match3943739438%_
                    (lambda (_%e3581435858%_
                             _%hd3581535862%_
                             _%tl3581635865%_
                             _%e3581735868%_
                             _%hd3581835872%_
                             _%tl3581935875%_
                             _%__splice3935739358%_
                             _%target3582035878%_
                             _%tl3582235881%_)
                      (letrec ((_%loop3582335884%_
                                (lambda (_%hd3582135888%_
                                         _%expr3582735891%_
                                         _%hd3582835893%_)
                                  (if (gx#stx-pair? _%hd3582135888%_)
                                      (let ((_%e3582435896%_
                                             (gx#syntax-e _%hd3582135888%_)))
                                        (let ((_%lp-tl3582635903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3582435896%_)))
                                              (_%lp-hd3582535900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3582435896%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3582535900%_)
                                              (let ((_%e3583135906%_
                                                     (gx#syntax-e
                                                      _%lp-hd3582535900%_)))
                                                (let ((_%tl3583335913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3583135906%_)))
                                                      (_%hd3583235910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3583135906%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3583335913%_)
                                                      (let ((_%e3583435916%_
                                                             (gx#syntax-e
                                                              _%tl3583335913%_)))
                                                        (let ((_%tl3583635923%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3583435916%_)))
                      (_%hd3583535920%_
                       (let () (declare (not safe)) (##car _%e3583435916%_))))
                  (if (gx#stx-null? _%tl3583635923%_)
                      (_%loop3582335884%_
                       _%lp-tl3582635903%_
                       (cons _%hd3583535920%_ _%expr3582735891%_)
                       (cons _%hd3583235910%_ _%hd3582835893%_))
                      (let () (declare (not safe)) (_%g3576835851%_)))))
              (let () (declare (not safe)) (_%g3576835851%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3576835851%_)))))
                                      (let ((_%hd3583035929%_
                                             (reverse _%hd3582835893%_))
                                            (_%expr3582935926%_
                                             (reverse _%expr3582735891%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3581935875%_)
                                            (let ((_%__splice3935939360%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3581935875%_
                                                    '0)))
                                              (let ((_%tl3583935935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3935939360%_
                                                        '1)))
                                                    (_%target3583735932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3935939360%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3583935935%_)
                                                    (letrec ((_%loop3584035938%_
                                                              (lambda (_%hd3583835942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3584435945%_)
                        (if (gx#stx-pair? _%hd3583835942%_)
                            (let ((_%e3584135948%_
                                   (gx#syntax-e _%hd3583835942%_)))
                              (let ((_%lp-tl3584335955%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3584135948%_)))
                                    (_%lp-hd3584235952%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3584135948%_))))
                                (_%loop3584035938%_
                                 _%lp-tl3584335955%_
                                 (cons _%lp-hd3584235952%_
                                       _%body3584435945%_))))
                            (let ((_%body3584535958%_
                                   (reverse _%body3584435945%_)))
                              (_%__kont3935539356%_
                               _%body3584535958%_
                               _%expr3582935926%_
                               _%hd3583035929%_))))))
              (_%loop3584035938%_ _%target3583735932%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3576835851%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3576835851%_))))))))
                        (_%loop3582335884%_ _%target3582035878%_ '() '()))))
                   (_%__match3942939430%_
                    (lambda (_%e3581435858%_
                             _%hd3581535862%_
                             _%tl3581635865%_
                             _%e3581735868%_
                             _%hd3581835872%_
                             _%tl3581935875%_)
                      (if (gx#stx-pair/null? _%hd3581835872%_)
                          (let ((_%__splice3935739358%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3581835872%_
                                  '0)))
                            (let ((_%tl3582235881%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3935739358%_ '1)))
                                  (_%target3582035878%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3935739358%_
                                      '0))))
                              (if (gx#stx-null? _%tl3582235881%_)
                                  (_%__match3943739438%_
                                   _%e3581435858%_
                                   _%hd3581535862%_
                                   _%tl3581635865%_
                                   _%e3581735868%_
                                   _%hd3581835872%_
                                   _%tl3581935875%_
                                   _%__splice3935739358%_
                                   _%target3582035878%_
                                   _%tl3582235881%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3576835851%_)))))
                          (let () (declare (not safe)) (_%g3576835851%_)))))
                   (_%__match3941739418%_
                    (lambda (_%e3579036019%_
                             _%hd3579136023%_
                             _%tl3579236026%_
                             _%e3579336029%_
                             _%hd3579436033%_
                             _%tl3579536036%_
                             _%e3579636039%_
                             _%hd3579736043%_
                             _%tl3579836046%_
                             _%e3579936049%_
                             _%hd3580036053%_
                             _%tl3580136056%_
                             _%__splice3935339354%_
                             _%target3580236059%_
                             _%tl3580436062%_)
                      (letrec ((_%loop3580536065%_
                                (lambda (_%hd3580336069%_ _%body3580936072%_)
                                  (if (gx#stx-pair? _%hd3580336069%_)
                                      (let ((_%e3580636075%_
                                             (gx#syntax-e _%hd3580336069%_)))
                                        (let ((_%lp-tl3580836082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3580636075%_)))
                                              (_%lp-hd3580736079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3580636075%_))))
                                          (_%loop3580536065%_
                                           _%lp-tl3580836082%_
                                           (cons _%lp-hd3580736079%_
                                                 _%body3580936072%_))))
                                      (let ((_%body3581036085%_
                                             (reverse _%body3580936072%_)))
                                        (let ((_%L36089%_ _%body3581036085%_)
                                              (_%L36091%_ _%hd3580036053%_)
                                              (_%L36092%_ _%hd3579736043%_)
                                              (_%L36093%_ _%hd3579136023%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%L36092%_)
                                              (_%__kont3935139352%_
                                               _%L36089%_
                                               _%L36091%_
                                               _%L36092%_
                                               _%L36093%_)
                                              (_%__match3942939430%_
                                               _%e3579036019%_
                                               _%hd3579136023%_
                                               _%tl3579236026%_
                                               _%e3579336029%_
                                               _%hd3579436033%_
                                               _%tl3579536036%_))))))))
                        (_%loop3580536065%_ _%target3580236059%_ '()))))
                   (_%__match3938339384%_
                    (lambda (_%e3577136131%_
                             _%hd3577236135%_
                             _%tl3577336138%_
                             _%e3577436141%_
                             _%hd3577536145%_
                             _%tl3577636148%_
                             _%__splice3934939350%_
                             _%target3577736151%_
                             _%tl3577936154%_)
                      (letrec ((_%loop3578036157%_
                                (lambda (_%hd3577836161%_ _%body3578436164%_)
                                  (if (gx#stx-pair? _%hd3577836161%_)
                                      (let ((_%e3578136167%_
                                             (gx#syntax-e _%hd3577836161%_)))
                                        (let ((_%lp-tl3578336174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3578136167%_)))
                                              (_%lp-hd3578236171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3578136167%_))))
                                          (_%loop3578036157%_
                                           _%lp-tl3578336174%_
                                           (cons _%lp-hd3578236171%_
                                                 _%body3578436164%_))))
                                      (let ((_%body3578536177%_
                                             (reverse _%body3578436164%_)))
                                        (_%__kont3934739348%_
                                         _%body3578536177%_))))))
                        (_%loop3578036157%_ _%target3577736151%_ '())))))
              (if (gx#stx-pair? _%__stx3934439345%_)
                  (let ((_%e3577136131%_ (gx#syntax-e _%__stx3934439345%_)))
                    (let ((_%tl3577336138%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3577136131%_)))
                          (_%hd3577236135%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3577136131%_))))
                      (if (gx#stx-pair? _%tl3577336138%_)
                          (let ((_%e3577436141%_
                                 (gx#syntax-e _%tl3577336138%_)))
                            (let ((_%tl3577636148%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3577436141%_)))
                                  (_%hd3577536145%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3577436141%_))))
                              (if (gx#stx-null? _%hd3577536145%_)
                                  (if (gx#stx-pair/null? _%tl3577636148%_)
                                      (let ((_%__splice3934939350%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3577636148%_
                                              '0)))
                                        (let ((_%tl3577936154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3934939350%_
                                                  '1)))
                                              (_%target3577736151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3934939350%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3577936154%_)
                                              (_%__match3938339384%_
                                               _%e3577136131%_
                                               _%hd3577236135%_
                                               _%tl3577336138%_
                                               _%e3577436141%_
                                               _%hd3577536145%_
                                               _%tl3577636148%_
                                               _%__splice3934939350%_
                                               _%target3577736151%_
                                               _%tl3577936154%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3577536145%_)
                                                  (let ((_%__splice3935739358%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3577536145%_
                                                          '0)))
                                                    (let ((_%tl3582235881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3935739358%_
                                                              '1)))
                                                          (_%target3582035878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3935739358%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3582235881%_)
                                                          (_%__match3943739438%_
                                                           _%e3577136131%_
                                                           _%hd3577236135%_
                                                           _%tl3577336138%_
                                                           _%e3577436141%_
                                                           _%hd3577536145%_
                                                           _%tl3577636148%_
                                                           _%__splice3935739358%_
                                                           _%target3582035878%_
                                                           _%tl3582235881%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3576835851%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3576835851%_))))))
                                      (if (gx#stx-pair/null? _%hd3577536145%_)
                                          (let ((_%__splice3935739358%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3577536145%_
                                                  '0)))
                                            (let ((_%tl3582235881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3935739358%_
                                                      '1)))
                                                  (_%target3582035878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3935739358%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3582235881%_)
                                                  (_%__match3943739438%_
                                                   _%e3577136131%_
                                                   _%hd3577236135%_
                                                   _%tl3577336138%_
                                                   _%e3577436141%_
                                                   _%hd3577536145%_
                                                   _%tl3577636148%_
                                                   _%__splice3935739358%_
                                                   _%target3582035878%_
                                                   _%tl3582235881%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3576835851%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3576835851%_))))
                                  (if (gx#stx-pair? _%hd3577536145%_)
                                      (let ((_%e3579636039%_
                                             (gx#syntax-e _%hd3577536145%_)))
                                        (let ((_%tl3579836046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3579636039%_)))
                                              (_%hd3579736043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3579636039%_))))
                                          (if (gx#stx-pair? _%tl3579836046%_)
                                              (let ((_%e3579936049%_
                                                     (gx#syntax-e
                                                      _%tl3579836046%_)))
                                                (let ((_%tl3580136056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3579936049%_)))
                                                      (_%hd3580036053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3579936049%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3580136056%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3577636148%_)
                                                          (let ((_%__splice3935339354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3577636148%_ '0)))
                    (let ((_%tl3580436062%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3935339354%_ '1)))
                          (_%target3580236059%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3935339354%_ '0))))
                      (if (gx#stx-null? _%tl3580436062%_)
                          (_%__match3941739418%_
                           _%e3577136131%_
                           _%hd3577236135%_
                           _%tl3577336138%_
                           _%e3577436141%_
                           _%hd3577536145%_
                           _%tl3577636148%_
                           _%e3579636039%_
                           _%hd3579736043%_
                           _%tl3579836046%_
                           _%e3579936049%_
                           _%hd3580036053%_
                           _%tl3580136056%_
                           _%__splice3935339354%_
                           _%target3580236059%_
                           _%tl3580436062%_)
                          (if (gx#stx-pair/null? _%hd3577536145%_)
                              (let ((_%__splice3935739358%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3577536145%_
                                      '0)))
                                (let ((_%tl3582235881%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3935739358%_
                                          '1)))
                                      (_%target3582035878%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3935739358%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3582235881%_)
                                      (_%__match3943739438%_
                                       _%e3577136131%_
                                       _%hd3577236135%_
                                       _%tl3577336138%_
                                       _%e3577436141%_
                                       _%hd3577536145%_
                                       _%tl3577636148%_
                                       _%__splice3935739358%_
                                       _%target3582035878%_
                                       _%tl3582235881%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3576835851%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3576835851%_))))))
                  (if (gx#stx-pair/null? _%hd3577536145%_)
                      (let ((_%__splice3935739358%_
                             (gx#syntax-split-splice->vector
                              _%hd3577536145%_
                              '0)))
                        (let ((_%tl3582235881%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3935739358%_ '1)))
                              (_%target3582035878%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3935739358%_ '0))))
                          (if (gx#stx-null? _%tl3582235881%_)
                              (_%__match3943739438%_
                               _%e3577136131%_
                               _%hd3577236135%_
                               _%tl3577336138%_
                               _%e3577436141%_
                               _%hd3577536145%_
                               _%tl3577636148%_
                               _%__splice3935739358%_
                               _%target3582035878%_
                               _%tl3582235881%_)
                              (let ()
                                (declare (not safe))
                                (_%g3576835851%_)))))
                      (let () (declare (not safe)) (_%g3576835851%_))))
              (if (gx#stx-pair/null? _%hd3577536145%_)
                  (let ((_%__splice3935739358%_
                         (gx#syntax-split-splice->vector _%hd3577536145%_ '0)))
                    (let ((_%tl3582235881%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3935739358%_ '1)))
                          (_%target3582035878%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3935739358%_ '0))))
                      (if (gx#stx-null? _%tl3582235881%_)
                          (_%__match3943739438%_
                           _%e3577136131%_
                           _%hd3577236135%_
                           _%tl3577336138%_
                           _%e3577436141%_
                           _%hd3577536145%_
                           _%tl3577636148%_
                           _%__splice3935739358%_
                           _%target3582035878%_
                           _%tl3582235881%_)
                          (let () (declare (not safe)) (_%g3576835851%_)))))
                  (let () (declare (not safe)) (_%g3576835851%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3577536145%_)
                                                  (let ((_%__splice3935739358%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3577536145%_
                                                          '0)))
                                                    (let ((_%tl3582235881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3935739358%_
                                                              '1)))
                                                          (_%target3582035878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3935739358%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3582235881%_)
                                                          (_%__match3943739438%_
                                                           _%e3577136131%_
                                                           _%hd3577236135%_
                                                           _%tl3577336138%_
                                                           _%e3577436141%_
                                                           _%hd3577536145%_
                                                           _%tl3577636148%_
                                                           _%__splice3935739358%_
                                                           _%target3582035878%_
                                                           _%tl3582235881%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3576835851%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3576835851%_))))))
                                      (if (gx#stx-pair/null? _%hd3577536145%_)
                                          (let ((_%__splice3935739358%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3577536145%_
                                                  '0)))
                                            (let ((_%tl3582235881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3935739358%_
                                                      '1)))
                                                  (_%target3582035878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3935739358%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3582235881%_)
                                                  (_%__match3943739438%_
                                                   _%e3577136131%_
                                                   _%hd3577236135%_
                                                   _%tl3577336138%_
                                                   _%e3577436141%_
                                                   _%hd3577536145%_
                                                   _%tl3577636148%_
                                                   _%__splice3935739358%_
                                                   _%target3582035878%_
                                                   _%tl3582235881%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3576835851%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3576835851%_)))))))
                          (let () (declare (not safe)) (_%g3576835851%_)))))
                  (let () (declare (not safe)) (_%g3576835851%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36214%_)
        (let* ((_%__stx3944039441%_ _%$stx36214%_)
               (_%g3621936271%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3944039441%_))))
          (let ((_%__kont3944339444%_
                 (lambda (_%L36441%_
                          _%L36443%_
                          _%L36444%_
                          _%L36445%_
                          _%L36446%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36445%_ (cons _%L36444%_ '()))
                                     '())
                               (cons (cons _%L36446%_
                                           (cons _%L36443%_
                                                 (foldr (lambda (_%g3647136474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3647236477%_)
                  (cons _%g3647136474%_ _%g3647236477%_))
                '()
                _%L36441%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3944739448%_
                 (lambda (_%L36328%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3634536348%_ _%g3634636351%_)
                                        (cons _%g3634536348%_ _%g3634636351%_))
                                      '()
                                      _%L36328%_))))))
            (let* ((_%__match3951339514%_
                    (lambda (_%e3625136278%_
                             _%hd3625236282%_
                             _%tl3625336285%_
                             _%e3625436288%_
                             _%hd3625536292%_
                             _%tl3625636295%_
                             _%__splice3944939450%_
                             _%target3625736298%_
                             _%tl3625936301%_)
                      (letrec ((_%loop3626036304%_
                                (lambda (_%hd3625836308%_ _%body3626436311%_)
                                  (if (gx#stx-pair? _%hd3625836308%_)
                                      (let ((_%e3626136314%_
                                             (gx#syntax-e _%hd3625836308%_)))
                                        (let ((_%lp-tl3626336321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3626136314%_)))
                                              (_%lp-hd3626236318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3626136314%_))))
                                          (_%loop3626036304%_
                                           _%lp-tl3626336321%_
                                           (cons _%lp-hd3626236318%_
                                                 _%body3626436311%_))))
                                      (let ((_%body3626536324%_
                                             (reverse _%body3626436311%_)))
                                        (_%__kont3944739448%_
                                         _%body3626536324%_))))))
                        (_%loop3626036304%_ _%target3625736298%_ '()))))
                   (_%__match3949139492%_
                    (lambda (_%e3622636361%_
                             _%hd3622736365%_
                             _%tl3622836368%_
                             _%e3622936371%_
                             _%hd3623036375%_
                             _%tl3623136378%_
                             _%e3623236381%_
                             _%hd3623336385%_
                             _%tl3623436388%_
                             _%e3623536391%_
                             _%hd3623636395%_
                             _%tl3623736398%_
                             _%e3623836401%_
                             _%hd3623936405%_
                             _%tl3624036408%_
                             _%__splice3944539446%_
                             _%target3624136411%_
                             _%tl3624336414%_)
                      (letrec ((_%loop3624436417%_
                                (lambda (_%hd3624236421%_ _%body3624836424%_)
                                  (if (gx#stx-pair? _%hd3624236421%_)
                                      (let ((_%e3624536427%_
                                             (gx#syntax-e _%hd3624236421%_)))
                                        (let ((_%lp-tl3624736434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3624536427%_)))
                                              (_%lp-hd3624636431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3624536427%_))))
                                          (_%loop3624436417%_
                                           _%lp-tl3624736434%_
                                           (cons _%lp-hd3624636431%_
                                                 _%body3624836424%_))))
                                      (let ((_%body3624936437%_
                                             (reverse _%body3624836424%_)))
                                        (_%__kont3944339444%_
                                         _%body3624936437%_
                                         _%tl3623436388%_
                                         _%hd3623936405%_
                                         _%hd3623636395%_
                                         _%hd3622736365%_))))))
                        (_%loop3624436417%_ _%target3624136411%_ '())))))
              (if (gx#stx-pair? _%__stx3944039441%_)
                  (let ((_%e3622636361%_ (gx#syntax-e _%__stx3944039441%_)))
                    (let ((_%tl3622836368%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3622636361%_)))
                          (_%hd3622736365%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3622636361%_))))
                      (if (gx#stx-pair? _%tl3622836368%_)
                          (let ((_%e3622936371%_
                                 (gx#syntax-e _%tl3622836368%_)))
                            (let ((_%tl3623136378%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3622936371%_)))
                                  (_%hd3623036375%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3622936371%_))))
                              (if (gx#stx-pair? _%hd3623036375%_)
                                  (let ((_%e3623236381%_
                                         (gx#syntax-e _%hd3623036375%_)))
                                    (let ((_%tl3623436388%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3623236381%_)))
                                          (_%hd3623336385%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3623236381%_))))
                                      (if (gx#stx-pair? _%hd3623336385%_)
                                          (let ((_%e3623536391%_
                                                 (gx#syntax-e
                                                  _%hd3623336385%_)))
                                            (let ((_%tl3623736398%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3623536391%_)))
                                                  (_%hd3623636395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3623536391%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3623736398%_)
                                                  (let ((_%e3623836401%_
                                                         (gx#syntax-e
                                                          _%tl3623736398%_)))
                                                    (let ((_%tl3624036408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3623836401%_)))
                                                          (_%hd3623936405%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3623836401%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3624036408%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3623136378%_)
                                                              (let ((_%__splice3944539446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3623136378%_
                              '0)))
                        (let ((_%tl3624336414%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3944539446%_ '1)))
                              (_%target3624136411%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3944539446%_ '0))))
                          (if (gx#stx-null? _%tl3624336414%_)
                              (_%__match3949139492%_
                               _%e3622636361%_
                               _%hd3622736365%_
                               _%tl3622836368%_
                               _%e3622936371%_
                               _%hd3623036375%_
                               _%tl3623136378%_
                               _%e3623236381%_
                               _%hd3623336385%_
                               _%tl3623436388%_
                               _%e3623536391%_
                               _%hd3623636395%_
                               _%tl3623736398%_
                               _%e3623836401%_
                               _%hd3623936405%_
                               _%tl3624036408%_
                               _%__splice3944539446%_
                               _%target3624136411%_
                               _%tl3624336414%_)
                              (let ()
                                (declare (not safe))
                                (_%g3621936271%_)))))
                      (let () (declare (not safe)) (_%g3621936271%_)))
                  (let () (declare (not safe)) (_%g3621936271%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3621936271%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3621936271%_)))))
                                  (if (gx#stx-null? _%hd3623036375%_)
                                      (if (gx#stx-pair/null? _%tl3623136378%_)
                                          (let ((_%__splice3944939450%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3623136378%_
                                                  '0)))
                                            (let ((_%tl3625936301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3944939450%_
                                                      '1)))
                                                  (_%target3625736298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3944939450%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3625936301%_)
                                                  (_%__match3951339514%_
                                                   _%e3622636361%_
                                                   _%hd3622736365%_
                                                   _%tl3622836368%_
                                                   _%e3622936371%_
                                                   _%hd3623036375%_
                                                   _%tl3623136378%_
                                                   _%__splice3944939450%_
                                                   _%target3625736298%_
                                                   _%tl3625936301%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3621936271%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3621936271%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3621936271%_))))))
                          (let () (declare (not safe)) (_%g3621936271%_)))))
                  (let () (declare (not safe)) (_%g3621936271%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36486%_)
        (let* ((_%__stx3951639517%_ _%$stx36486%_)
               (_%g3649736643%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3951639517%_))))
          (let ((_%__kont3951939520%_
                 (lambda (_%L37247%_ _%L37249%_ _%L37250%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3727137274%_ _%g3727237277%_)
                                  (cons (cons _%L37250%_
                                              (cons _%g3727137274%_
                                                    (cons _%L37247%_ '())))
                                        _%g3727237277%_))
                                '()
                                _%L37249%_))))
                (_%__kont3952339524%_
                 (lambda (_%L37137%_ _%L37139%_ _%L37140%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3716137164%_ _%g3716237167%_)
                                  (cons (cons _%L37140%_
                                              (cons _%g3716137164%_
                                                    (cons _%L37137%_ '())))
                                        _%g3716237167%_))
                                '()
                                _%L37139%_))))
                (_%__kont3952739528%_
                 (lambda (_%L37037%_ _%L37039%_ _%L37040%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L37040%_
                                     (cons _%L37039%_ (cons _%L37037%_ '())))
                               '()))))
                (_%__kont3952939530%_
                 (lambda (_%L36963%_ _%L36965%_)
                   (cons _%L36965%_ (cons _%L36963%_ '()))))
                (_%__kont3953139532%_
                 (lambda (_%L36911%_ _%L36913%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L36913%_
                                           (cons _%L36911%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3953339534%_
                 (lambda (_%L36863%_ _%L36865%_ _%L36866%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L36866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L36865%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36863%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3953539536%_
                 (lambda (_%L36794%_ _%L36796%_ _%L36797%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36797%_
                                                       (cons _%L36796%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36794%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3953739538%_
                 (lambda (_%L36714%_ _%L36716%_ _%L36717%_ _%L36718%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36718%_
                                                       (cons _%L36717%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36714%_
                                                             (cons (cons _%L36716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3968939690%_
                    (lambda (_%e3658736823%_
                             _%hd3658836827%_
                             _%tl3658936830%_
                             _%e3659036833%_
                             _%hd3659136837%_
                             _%tl3659236840%_
                             _%e3659336843%_
                             _%hd3659436847%_
                             _%tl3659536850%_)
                      (if (gx#identifier? _%hd3659436847%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39891_|
                               _%hd3659436847%_)
                              (if (gx#stx-pair? _%tl3659536850%_)
                                  (let ((_%e3659636853%_
                                         (gx#syntax-e _%tl3659536850%_)))
                                    (let ((_%tl3659836860%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3659636853%_)))
                                          (_%hd3659736857%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3659636853%_))))
                                      (if (gx#stx-null? _%tl3659836860%_)
                                          (_%__kont3953339534%_
                                           _%hd3659736857%_
                                           _%hd3659136837%_
                                           _%hd3658836827%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3649736643%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3649736643%_)))
                              (let () (declare (not safe)) (_%g3649736643%_)))
                          (if (gx#stx-datum? _%hd3659436847%_)
                              (let ((_%e3661136780%_
                                     (gx#stx-e _%hd3659436847%_)))
                                (if (equal? _%e3661136780%_ '::)
                                    (if (gx#stx-pair? _%tl3659536850%_)
                                        (let ((_%e3661236784%_
                                               (gx#syntax-e _%tl3659536850%_)))
                                          (let ((_%tl3661436791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3661236784%_)))
                                                (_%hd3661336788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3661236784%_))))
                                            (if (gx#stx-null? _%tl3661436791%_)
                                                (_%__kont3953539536%_
                                                 _%hd3661336788%_
                                                 _%hd3659136837%_
                                                 _%hd3658836827%_)
                                                (if (gx#stx-pair?
                                                     _%tl3661436791%_)
                                                    (let ((_%e3663236694%_
                                                           (gx#syntax-e
                                                            _%tl3661436791%_)))
                                                      (let ((_%tl3663436701%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3663236694%_)))
                    (_%hd3663336698%_
                     (let () (declare (not safe)) (##car _%e3663236694%_))))
                (if (gx#identifier? _%hd3663336698%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39892_|
                         _%hd3663336698%_)
                        (if (gx#stx-pair? _%tl3663436701%_)
                            (let ((_%e3663536704%_
                                   (gx#syntax-e _%tl3663436701%_)))
                              (let ((_%tl3663736711%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3663536704%_)))
                                    (_%hd3663636708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3663536704%_))))
                                (if (gx#stx-null? _%tl3663736711%_)
                                    (_%__kont3953739538%_
                                     _%hd3663636708%_
                                     _%hd3661336788%_
                                     _%hd3659136837%_
                                     _%hd3658836827%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3649736643%_)))))
                            (let () (declare (not safe)) (_%g3649736643%_)))
                        (let () (declare (not safe)) (_%g3649736643%_)))
                    (let () (declare (not safe)) (_%g3649736643%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3649736643%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3649736643%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3649736643%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3649736643%_))))))
                   (_%__match3966939670%_
                    (lambda (_%e3657836891%_
                             _%hd3657936895%_
                             _%tl3658036898%_
                             _%e3658136901%_
                             _%hd3658236905%_
                             _%tl3658336908%_)
                      (if (gx#stx-null? _%tl3658336908%_)
                          (_%__kont3953139532%_
                           _%hd3658236905%_
                           _%hd3657936895%_)
                          (if (gx#stx-pair? _%tl3658336908%_)
                              (let ((_%e3659336843%_
                                     (gx#syntax-e _%tl3658336908%_)))
                                (let ((_%tl3659536850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3659336843%_)))
                                      (_%hd3659436847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3659336843%_))))
                                  (if (gx#identifier? _%hd3659436847%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39891_|
                                           _%hd3659436847%_)
                                          (if (gx#stx-pair? _%tl3659536850%_)
                                              (let ((_%e3659636853%_
                                                     (gx#syntax-e
                                                      _%tl3659536850%_)))
                                                (let ((_%tl3659836860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3659636853%_)))
                                                      (_%hd3659736857%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3659636853%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3659836860%_)
                                                      (_%__kont3953339534%_
                                                       _%hd3659736857%_
                                                       _%hd3658236905%_
                                                       _%hd3657936895%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3649736643%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3649736643%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3649736643%_)))
                                      (if (gx#stx-datum? _%hd3659436847%_)
                                          (let ((_%e3661136780%_
                                                 (gx#stx-e _%hd3659436847%_)))
                                            (if (equal? _%e3661136780%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3659536850%_)
                                                    (let ((_%e3661236784%_
                                                           (gx#syntax-e
                                                            _%tl3659536850%_)))
                                                      (let ((_%tl3661436791%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3661236784%_)))
                    (_%hd3661336788%_
                     (let () (declare (not safe)) (##car _%e3661236784%_))))
                (if (gx#stx-null? _%tl3661436791%_)
                    (_%__kont3953539536%_
                     _%hd3661336788%_
                     _%hd3658236905%_
                     _%hd3657936895%_)
                    (if (gx#stx-pair? _%tl3661436791%_)
                        (let ((_%e3663236694%_ (gx#syntax-e _%tl3661436791%_)))
                          (let ((_%tl3663436701%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3663236694%_)))
                                (_%hd3663336698%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3663236694%_))))
                            (if (gx#identifier? _%hd3663336698%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39892_|
                                     _%hd3663336698%_)
                                    (if (gx#stx-pair? _%tl3663436701%_)
                                        (let ((_%e3663536704%_
                                               (gx#syntax-e _%tl3663436701%_)))
                                          (let ((_%tl3663736711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3663536704%_)))
                                                (_%hd3663636708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3663536704%_))))
                                            (if (gx#stx-null? _%tl3663736711%_)
                                                (_%__kont3953739538%_
                                                 _%hd3663636708%_
                                                 _%hd3661336788%_
                                                 _%hd3658236905%_
                                                 _%hd3657936895%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3649736643%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3649736643%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3649736643%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3649736643%_)))))
                        (let () (declare (not safe)) (_%g3649736643%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3649736643%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3649736643%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3649736643%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3649736643%_))))))
                   (_%__match3959939600%_
                    (lambda (_%e3652637067%_
                             _%hd3652737071%_
                             _%tl3652837074%_
                             _%e3652937077%_
                             _%hd3653037081%_
                             _%tl3653137084%_
                             _%e3653237087%_
                             _%hd3653337091%_
                             _%tl3653437094%_
                             _%__splice3952539526%_
                             _%target3653537097%_
                             _%tl3653737100%_)
                      (letrec ((_%loop3653837103%_
                                (lambda (_%hd3653637107%_ _%pred3654237110%_)
                                  (if (gx#stx-pair? _%hd3653637107%_)
                                      (let ((_%e3653937113%_
                                             (gx#syntax-e _%hd3653637107%_)))
                                        (let ((_%lp-tl3654137120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3653937113%_)))
                                              (_%lp-hd3654037117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3653937113%_))))
                                          (_%loop3653837103%_
                                           _%lp-tl3654137120%_
                                           (cons _%lp-hd3654037117%_
                                                 _%pred3654237110%_))))
                                      (let ((_%pred3654337123%_
                                             (reverse _%pred3654237110%_)))
                                        (if (gx#stx-pair? _%tl3653137084%_)
                                            (let ((_%e3654437127%_
                                                   (gx#syntax-e
                                                    _%tl3653137084%_)))
                                              (let ((_%tl3654637134%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3654437127%_)))
                                                    (_%hd3654537131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3654437127%_))))
                                                (if (gx#stx-null?
                                                     _%tl3654637134%_)
                                                    (_%__kont3952339524%_
                                                     _%hd3654537131%_
                                                     _%pred3654337123%_
                                                     _%hd3652737071%_)
                                                    (_%__match3968939690%_
                                                     _%e3652637067%_
                                                     _%hd3652737071%_
                                                     _%tl3652837074%_
                                                     _%e3652937077%_
                                                     _%hd3653037081%_
                                                     _%tl3653137084%_
                                                     _%e3654437127%_
                                                     _%hd3654537131%_
                                                     _%tl3654637134%_))))
                                            (_%__match3966939670%_
                                             _%e3652637067%_
                                             _%hd3652737071%_
                                             _%tl3652837074%_
                                             _%e3652937077%_
                                             _%hd3653037081%_
                                             _%tl3653137084%_)))))))
                        (_%loop3653837103%_ _%target3653537097%_ '()))))
                   (_%__match3956939570%_
                    (lambda (_%e3650237177%_
                             _%hd3650337181%_
                             _%tl3650437184%_
                             _%e3650537187%_
                             _%hd3650637191%_
                             _%tl3650737194%_
                             _%e3650837197%_
                             _%hd3650937201%_
                             _%tl3651037204%_
                             _%__splice3952139522%_
                             _%target3651137207%_
                             _%tl3651337210%_)
                      (letrec ((_%loop3651437213%_
                                (lambda (_%hd3651237217%_ _%pred3651837220%_)
                                  (if (gx#stx-pair? _%hd3651237217%_)
                                      (let ((_%e3651537223%_
                                             (gx#syntax-e _%hd3651237217%_)))
                                        (let ((_%lp-tl3651737230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3651537223%_)))
                                              (_%lp-hd3651637227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3651537223%_))))
                                          (_%loop3651437213%_
                                           _%lp-tl3651737230%_
                                           (cons _%lp-hd3651637227%_
                                                 _%pred3651837220%_))))
                                      (let ((_%pred3651937233%_
                                             (reverse _%pred3651837220%_)))
                                        (if (gx#stx-pair? _%tl3650737194%_)
                                            (let ((_%e3652037237%_
                                                   (gx#syntax-e
                                                    _%tl3650737194%_)))
                                              (let ((_%tl3652237244%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3652037237%_)))
                                                    (_%hd3652137241%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3652037237%_))))
                                                (if (gx#stx-null?
                                                     _%tl3652237244%_)
                                                    (_%__kont3951939520%_
                                                     _%hd3652137241%_
                                                     _%pred3651937233%_
                                                     _%hd3650337181%_)
                                                    (_%__match3968939690%_
                                                     _%e3650237177%_
                                                     _%hd3650337181%_
                                                     _%tl3650437184%_
                                                     _%e3650537187%_
                                                     _%hd3650637191%_
                                                     _%tl3650737194%_
                                                     _%e3652037237%_
                                                     _%hd3652137241%_
                                                     _%tl3652237244%_))))
                                            (_%__match3966939670%_
                                             _%e3650237177%_
                                             _%hd3650337181%_
                                             _%tl3650437184%_
                                             _%e3650537187%_
                                             _%hd3650637191%_
                                             _%tl3650737194%_)))))))
                        (_%loop3651437213%_ _%target3651137207%_ '())))))
              (if (gx#stx-pair? _%__stx3951639517%_)
                  (let ((_%e3650237177%_ (gx#syntax-e _%__stx3951639517%_)))
                    (let ((_%tl3650437184%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3650237177%_)))
                          (_%hd3650337181%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3650237177%_))))
                      (if (gx#stx-pair? _%tl3650437184%_)
                          (let ((_%e3650537187%_
                                 (gx#syntax-e _%tl3650437184%_)))
                            (let ((_%tl3650737194%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3650537187%_)))
                                  (_%hd3650637191%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3650537187%_))))
                              (if (gx#stx-pair? _%hd3650637191%_)
                                  (let ((_%e3650837197%_
                                         (gx#syntax-e _%hd3650637191%_)))
                                    (let ((_%tl3651037204%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3650837197%_)))
                                          (_%hd3650937201%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3650837197%_))))
                                      (if (gx#identifier? _%hd3650937201%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39893_|
                                               _%hd3650937201%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3651037204%_)
                                                  (let ((_%__splice3952139522%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3651037204%_
                                                          '0)))
                                                    (let ((_%tl3651337210%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3952139522%_
                                                              '1)))
                                                          (_%target3651137207%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3952139522%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3651337210%_)
                                                          (_%__match3956939570%_
                                                           _%e3650237177%_
                                                           _%hd3650337181%_
                                                           _%tl3650437184%_
                                                           _%e3650537187%_
                                                           _%hd3650637191%_
                                                           _%tl3650737194%_
                                                           _%e3650837197%_
                                                           _%hd3650937201%_
                                                           _%tl3651037204%_
                                                           _%__splice3952139522%_
                                                           _%target3651137207%_
                                                           _%tl3651337210%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3650737194%_)
                                                              (let ((_%e3657336953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3650737194%_)))
                        (let ((_%tl3657536960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3657336953%_)))
                              (_%hd3657436957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3657336953%_))))
                          (if (gx#stx-null? _%tl3657536960%_)
                              (_%__kont3952939530%_
                               _%hd3657436957%_
                               _%hd3650637191%_)
                              (if (gx#identifier? _%hd3657436957%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39891_|
                                       _%hd3657436957%_)
                                      (if (gx#stx-pair? _%tl3657536960%_)
                                          (let ((_%e3659636853%_
                                                 (gx#syntax-e
                                                  _%tl3657536960%_)))
                                            (let ((_%tl3659836860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3659636853%_)))
                                                  (_%hd3659736857%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3659636853%_))))
                                              (if (gx#stx-null?
                                                   _%tl3659836860%_)
                                                  (_%__kont3953339534%_
                                                   _%hd3659736857%_
                                                   _%hd3650637191%_
                                                   _%hd3650337181%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3649736643%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3649736643%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3649736643%_)))
                                  (if (gx#stx-datum? _%hd3657436957%_)
                                      (let ((_%e3661136780%_
                                             (gx#stx-e _%hd3657436957%_)))
                                        (if (equal? _%e3661136780%_ '::)
                                            (if (gx#stx-pair? _%tl3657536960%_)
                                                (let ((_%e3661236784%_
                                                       (gx#syntax-e
                                                        _%tl3657536960%_)))
                                                  (let ((_%tl3661436791%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3661236784%_)))
                                                        (_%hd3661336788%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3661236784%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3661436791%_)
                                                        (_%__kont3953539536%_
                                                         _%hd3661336788%_
                                                         _%hd3650637191%_
                                                         _%hd3650337181%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3661436791%_)
                                                            (let ((_%e3663236694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3661436791%_)))
                      (let ((_%tl3663436701%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3663236694%_)))
                            (_%hd3663336698%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3663236694%_))))
                        (if (gx#identifier? _%hd3663336698%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39892_|
                                 _%hd3663336698%_)
                                (if (gx#stx-pair? _%tl3663436701%_)
                                    (let ((_%e3663536704%_
                                           (gx#syntax-e _%tl3663436701%_)))
                                      (let ((_%tl3663736711%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3663536704%_)))
                                            (_%hd3663636708%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3663536704%_))))
                                        (if (gx#stx-null? _%tl3663736711%_)
                                            (_%__kont3953739538%_
                                             _%hd3663636708%_
                                             _%hd3661336788%_
                                             _%hd3650637191%_
                                             _%hd3650337181%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3649736643%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3649736643%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3649736643%_)))
                            (let () (declare (not safe)) (_%g3649736643%_)))))
                    (let () (declare (not safe)) (_%g3649736643%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3649736643%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3649736643%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3649736643%_)))))))
                      (if (gx#stx-null? _%tl3650737194%_)
                          (_%__kont3953139532%_
                           _%hd3650637191%_
                           _%hd3650337181%_)
                          (let () (declare (not safe)) (_%g3649736643%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3650737194%_)
                                                      (let ((_%e3657336953%_
                                                             (gx#syntax-e
                                                              _%tl3650737194%_)))
                                                        (let ((_%tl3657536960%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3657336953%_)))
                      (_%hd3657436957%_
                       (let () (declare (not safe)) (##car _%e3657336953%_))))
                  (if (gx#stx-null? _%tl3657536960%_)
                      (_%__kont3952939530%_ _%hd3657436957%_ _%hd3650637191%_)
                      (if (gx#identifier? _%hd3657436957%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39891_|
                               _%hd3657436957%_)
                              (if (gx#stx-pair? _%tl3657536960%_)
                                  (let ((_%e3659636853%_
                                         (gx#syntax-e _%tl3657536960%_)))
                                    (let ((_%tl3659836860%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3659636853%_)))
                                          (_%hd3659736857%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3659636853%_))))
                                      (if (gx#stx-null? _%tl3659836860%_)
                                          (_%__kont3953339534%_
                                           _%hd3659736857%_
                                           _%hd3650637191%_
                                           _%hd3650337181%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3649736643%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3649736643%_)))
                              (let () (declare (not safe)) (_%g3649736643%_)))
                          (if (gx#stx-datum? _%hd3657436957%_)
                              (let ((_%e3661136780%_
                                     (gx#stx-e _%hd3657436957%_)))
                                (if (equal? _%e3661136780%_ '::)
                                    (if (gx#stx-pair? _%tl3657536960%_)
                                        (let ((_%e3661236784%_
                                               (gx#syntax-e _%tl3657536960%_)))
                                          (let ((_%tl3661436791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3661236784%_)))
                                                (_%hd3661336788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3661236784%_))))
                                            (if (gx#stx-null? _%tl3661436791%_)
                                                (_%__kont3953539536%_
                                                 _%hd3661336788%_
                                                 _%hd3650637191%_
                                                 _%hd3650337181%_)
                                                (if (gx#stx-pair?
                                                     _%tl3661436791%_)
                                                    (let ((_%e3663236694%_
                                                           (gx#syntax-e
                                                            _%tl3661436791%_)))
                                                      (let ((_%tl3663436701%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3663236694%_)))
                    (_%hd3663336698%_
                     (let () (declare (not safe)) (##car _%e3663236694%_))))
                (if (gx#identifier? _%hd3663336698%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39892_|
                         _%hd3663336698%_)
                        (if (gx#stx-pair? _%tl3663436701%_)
                            (let ((_%e3663536704%_
                                   (gx#syntax-e _%tl3663436701%_)))
                              (let ((_%tl3663736711%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3663536704%_)))
                                    (_%hd3663636708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3663536704%_))))
                                (if (gx#stx-null? _%tl3663736711%_)
                                    (_%__kont3953739538%_
                                     _%hd3663636708%_
                                     _%hd3661336788%_
                                     _%hd3650637191%_
                                     _%hd3650337181%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3649736643%_)))))
                            (let () (declare (not safe)) (_%g3649736643%_)))
                        (let () (declare (not safe)) (_%g3649736643%_)))
                    (let () (declare (not safe)) (_%g3649736643%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3649736643%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3649736643%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3649736643%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3649736643%_)))))))
              (if (gx#stx-null? _%tl3650737194%_)
                  (_%__kont3953139532%_ _%hd3650637191%_ _%hd3650337181%_)
                  (let () (declare (not safe)) (_%g3649736643%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39894_|
                                                   _%hd3650937201%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3651037204%_)
                                                      (let ((_%__splice3952539526%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3651037204%_
                                                              '0)))
                                                        (let ((_%tl3653737100%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3952539526%_ '1)))
                      (_%target3653537097%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3952539526%_ '0))))
                  (if (gx#stx-null? _%tl3653737100%_)
                      (_%__match3959939600%_
                       _%e3650237177%_
                       _%hd3650337181%_
                       _%tl3650437184%_
                       _%e3650537187%_
                       _%hd3650637191%_
                       _%tl3650737194%_
                       _%e3650837197%_
                       _%hd3650937201%_
                       _%tl3651037204%_
                       _%__splice3952539526%_
                       _%target3653537097%_
                       _%tl3653737100%_)
                      (if (gx#stx-pair? _%tl3650737194%_)
                          (let ((_%e3657336953%_
                                 (gx#syntax-e _%tl3650737194%_)))
                            (let ((_%tl3657536960%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3657336953%_)))
                                  (_%hd3657436957%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3657336953%_))))
                              (if (gx#stx-null? _%tl3657536960%_)
                                  (_%__kont3952939530%_
                                   _%hd3657436957%_
                                   _%hd3650637191%_)
                                  (if (gx#identifier? _%hd3657436957%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39891_|
                                           _%hd3657436957%_)
                                          (if (gx#stx-pair? _%tl3657536960%_)
                                              (let ((_%e3659636853%_
                                                     (gx#syntax-e
                                                      _%tl3657536960%_)))
                                                (let ((_%tl3659836860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3659636853%_)))
                                                      (_%hd3659736857%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3659636853%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3659836860%_)
                                                      (_%__kont3953339534%_
                                                       _%hd3659736857%_
                                                       _%hd3650637191%_
                                                       _%hd3650337181%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3649736643%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3649736643%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3649736643%_)))
                                      (if (gx#stx-datum? _%hd3657436957%_)
                                          (let ((_%e3661136780%_
                                                 (gx#stx-e _%hd3657436957%_)))
                                            (if (equal? _%e3661136780%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3657536960%_)
                                                    (let ((_%e3661236784%_
                                                           (gx#syntax-e
                                                            _%tl3657536960%_)))
                                                      (let ((_%tl3661436791%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3661236784%_)))
                    (_%hd3661336788%_
                     (let () (declare (not safe)) (##car _%e3661236784%_))))
                (if (gx#stx-null? _%tl3661436791%_)
                    (_%__kont3953539536%_
                     _%hd3661336788%_
                     _%hd3650637191%_
                     _%hd3650337181%_)
                    (if (gx#stx-pair? _%tl3661436791%_)
                        (let ((_%e3663236694%_ (gx#syntax-e _%tl3661436791%_)))
                          (let ((_%tl3663436701%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3663236694%_)))
                                (_%hd3663336698%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3663236694%_))))
                            (if (gx#identifier? _%hd3663336698%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39892_|
                                     _%hd3663336698%_)
                                    (if (gx#stx-pair? _%tl3663436701%_)
                                        (let ((_%e3663536704%_
                                               (gx#syntax-e _%tl3663436701%_)))
                                          (let ((_%tl3663736711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3663536704%_)))
                                                (_%hd3663636708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3663536704%_))))
                                            (if (gx#stx-null? _%tl3663736711%_)
                                                (_%__kont3953739538%_
                                                 _%hd3663636708%_
                                                 _%hd3661336788%_
                                                 _%hd3650637191%_
                                                 _%hd3650337181%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3649736643%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3649736643%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3649736643%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3649736643%_)))))
                        (let () (declare (not safe)) (_%g3649736643%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3649736643%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3649736643%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3649736643%_)))))))
                          (if (gx#stx-null? _%tl3650737194%_)
                              (_%__kont3953139532%_
                               _%hd3650637191%_
                               _%hd3650337181%_)
                              (let ()
                                (declare (not safe))
                                (_%g3649736643%_)))))))
              (if (gx#stx-pair? _%tl3650737194%_)
                  (let ((_%e3657336953%_ (gx#syntax-e _%tl3650737194%_)))
                    (let ((_%tl3657536960%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3657336953%_)))
                          (_%hd3657436957%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3657336953%_))))
                      (if (gx#stx-null? _%tl3657536960%_)
                          (_%__kont3952939530%_
                           _%hd3657436957%_
                           _%hd3650637191%_)
                          (if (gx#identifier? _%hd3657436957%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39891_|
                                   _%hd3657436957%_)
                                  (if (gx#stx-pair? _%tl3657536960%_)
                                      (let ((_%e3659636853%_
                                             (gx#syntax-e _%tl3657536960%_)))
                                        (let ((_%tl3659836860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3659636853%_)))
                                              (_%hd3659736857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3659636853%_))))
                                          (if (gx#stx-null? _%tl3659836860%_)
                                              (_%__kont3953339534%_
                                               _%hd3659736857%_
                                               _%hd3650637191%_
                                               _%hd3650337181%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3649736643%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3649736643%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3649736643%_)))
                              (if (gx#stx-datum? _%hd3657436957%_)
                                  (let ((_%e3661136780%_
                                         (gx#stx-e _%hd3657436957%_)))
                                    (if (equal? _%e3661136780%_ '::)
                                        (if (gx#stx-pair? _%tl3657536960%_)
                                            (let ((_%e3661236784%_
                                                   (gx#syntax-e
                                                    _%tl3657536960%_)))
                                              (let ((_%tl3661436791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3661236784%_)))
                                                    (_%hd3661336788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3661236784%_))))
                                                (if (gx#stx-null?
                                                     _%tl3661436791%_)
                                                    (_%__kont3953539536%_
                                                     _%hd3661336788%_
                                                     _%hd3650637191%_
                                                     _%hd3650337181%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3661436791%_)
                                                        (let ((_%e3663236694%_
                                                               (gx#syntax-e
                                                                _%tl3661436791%_)))
                                                          (let ((_%tl3663436701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3663236694%_)))
                        (_%hd3663336698%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3663236694%_))))
                    (if (gx#identifier? _%hd3663336698%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39892_|
                             _%hd3663336698%_)
                            (if (gx#stx-pair? _%tl3663436701%_)
                                (let ((_%e3663536704%_
                                       (gx#syntax-e _%tl3663436701%_)))
                                  (let ((_%tl3663736711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3663536704%_)))
                                        (_%hd3663636708%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3663536704%_))))
                                    (if (gx#stx-null? _%tl3663736711%_)
                                        (_%__kont3953739538%_
                                         _%hd3663636708%_
                                         _%hd3661336788%_
                                         _%hd3650637191%_
                                         _%hd3650337181%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3649736643%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3649736643%_)))
                            (let () (declare (not safe)) (_%g3649736643%_)))
                        (let () (declare (not safe)) (_%g3649736643%_)))))
                (let () (declare (not safe)) (_%g3649736643%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3649736643%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3649736643%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3649736643%_)))))))
                  (if (gx#stx-null? _%tl3650737194%_)
                      (_%__kont3953139532%_ _%hd3650637191%_ _%hd3650337181%_)
                      (let () (declare (not safe)) (_%g3649736643%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39895_|
                                                       _%hd3650937201%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3651037204%_)
                                                          (let ((_%e3655937017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3651037204%_)))
                    (let ((_%tl3656137024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3655937017%_)))
                          (_%hd3656037021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3655937017%_))))
                      (if (gx#stx-null? _%tl3656137024%_)
                          (if (gx#stx-pair? _%tl3650737194%_)
                              (let ((_%e3656237027%_
                                     (gx#syntax-e _%tl3650737194%_)))
                                (let ((_%tl3656437034%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3656237027%_)))
                                      (_%hd3656337031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3656237027%_))))
                                  (if (gx#stx-null? _%tl3656437034%_)
                                      (_%__kont3952739528%_
                                       _%hd3656337031%_
                                       _%hd3656037021%_
                                       _%hd3650337181%_)
                                      (if (gx#identifier? _%hd3656337031%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39891_|
                                               _%hd3656337031%_)
                                              (if (gx#stx-pair?
                                                   _%tl3656437034%_)
                                                  (let ((_%e3659636853%_
                                                         (gx#syntax-e
                                                          _%tl3656437034%_)))
                                                    (let ((_%tl3659836860%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3659636853%_)))
                                                          (_%hd3659736857%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3659636853%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3659836860%_)
                                                          (_%__kont3953339534%_
                                                           _%hd3659736857%_
                                                           _%hd3650637191%_
                                                           _%hd3650337181%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3649736643%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3649736643%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3649736643%_)))
                                          (if (gx#stx-datum? _%hd3656337031%_)
                                              (let ((_%e3661136780%_
                                                     (gx#stx-e
                                                      _%hd3656337031%_)))
                                                (if (equal? _%e3661136780%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3656437034%_)
                                                        (let ((_%e3661236784%_
                                                               (gx#syntax-e
                                                                _%tl3656437034%_)))
                                                          (let ((_%tl3661436791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3661236784%_)))
                        (_%hd3661336788%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3661236784%_))))
                    (if (gx#stx-null? _%tl3661436791%_)
                        (_%__kont3953539536%_
                         _%hd3661336788%_
                         _%hd3650637191%_
                         _%hd3650337181%_)
                        (if (gx#stx-pair? _%tl3661436791%_)
                            (let ((_%e3663236694%_
                                   (gx#syntax-e _%tl3661436791%_)))
                              (let ((_%tl3663436701%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3663236694%_)))
                                    (_%hd3663336698%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3663236694%_))))
                                (if (gx#identifier? _%hd3663336698%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39892_|
                                         _%hd3663336698%_)
                                        (if (gx#stx-pair? _%tl3663436701%_)
                                            (let ((_%e3663536704%_
                                                   (gx#syntax-e
                                                    _%tl3663436701%_)))
                                              (let ((_%tl3663736711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3663536704%_)))
                                                    (_%hd3663636708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3663536704%_))))
                                                (if (gx#stx-null?
                                                     _%tl3663736711%_)
                                                    (_%__kont3953739538%_
                                                     _%hd3663636708%_
                                                     _%hd3661336788%_
                                                     _%hd3650637191%_
                                                     _%hd3650337181%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3649736643%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3649736643%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3649736643%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3649736643%_)))))
                            (let () (declare (not safe)) (_%g3649736643%_))))))
                (let () (declare (not safe)) (_%g3649736643%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3649736643%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3649736643%_)))))))
                              (if (gx#stx-null? _%tl3650737194%_)
                                  (_%__kont3953139532%_
                                   _%hd3650637191%_
                                   _%hd3650337181%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3649736643%_))))
                          (if (gx#stx-pair? _%tl3650737194%_)
                              (let ((_%e3657336953%_
                                     (gx#syntax-e _%tl3650737194%_)))
                                (let ((_%tl3657536960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3657336953%_)))
                                      (_%hd3657436957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3657336953%_))))
                                  (if (gx#stx-null? _%tl3657536960%_)
                                      (_%__kont3952939530%_
                                       _%hd3657436957%_
                                       _%hd3650637191%_)
                                      (if (gx#identifier? _%hd3657436957%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39891_|
                                               _%hd3657436957%_)
                                              (if (gx#stx-pair?
                                                   _%tl3657536960%_)
                                                  (let ((_%e3659636853%_
                                                         (gx#syntax-e
                                                          _%tl3657536960%_)))
                                                    (let ((_%tl3659836860%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3659636853%_)))
                                                          (_%hd3659736857%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3659636853%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3659836860%_)
                                                          (_%__kont3953339534%_
                                                           _%hd3659736857%_
                                                           _%hd3650637191%_
                                                           _%hd3650337181%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3649736643%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3649736643%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3649736643%_)))
                                          (if (gx#stx-datum? _%hd3657436957%_)
                                              (let ((_%e3661136780%_
                                                     (gx#stx-e
                                                      _%hd3657436957%_)))
                                                (if (equal? _%e3661136780%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3657536960%_)
                                                        (let ((_%e3661236784%_
                                                               (gx#syntax-e
                                                                _%tl3657536960%_)))
                                                          (let ((_%tl3661436791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3661236784%_)))
                        (_%hd3661336788%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3661236784%_))))
                    (if (gx#stx-null? _%tl3661436791%_)
                        (_%__kont3953539536%_
                         _%hd3661336788%_
                         _%hd3650637191%_
                         _%hd3650337181%_)
                        (if (gx#stx-pair? _%tl3661436791%_)
                            (let ((_%e3663236694%_
                                   (gx#syntax-e _%tl3661436791%_)))
                              (let ((_%tl3663436701%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3663236694%_)))
                                    (_%hd3663336698%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3663236694%_))))
                                (if (gx#identifier? _%hd3663336698%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39892_|
                                         _%hd3663336698%_)
                                        (if (gx#stx-pair? _%tl3663436701%_)
                                            (let ((_%e3663536704%_
                                                   (gx#syntax-e
                                                    _%tl3663436701%_)))
                                              (let ((_%tl3663736711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3663536704%_)))
                                                    (_%hd3663636708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3663536704%_))))
                                                (if (gx#stx-null?
                                                     _%tl3663736711%_)
                                                    (_%__kont3953739538%_
                                                     _%hd3663636708%_
                                                     _%hd3661336788%_
                                                     _%hd3650637191%_
                                                     _%hd3650337181%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3649736643%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3649736643%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3649736643%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3649736643%_)))))
                            (let () (declare (not safe)) (_%g3649736643%_))))))
                (let () (declare (not safe)) (_%g3649736643%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3649736643%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3649736643%_)))))))
                              (if (gx#stx-null? _%tl3650737194%_)
                                  (_%__kont3953139532%_
                                   _%hd3650637191%_
                                   _%hd3650337181%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3649736643%_)))))))
                  (if (gx#stx-pair? _%tl3650737194%_)
                      (let ((_%e3657336953%_ (gx#syntax-e _%tl3650737194%_)))
                        (let ((_%tl3657536960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3657336953%_)))
                              (_%hd3657436957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3657336953%_))))
                          (if (gx#stx-null? _%tl3657536960%_)
                              (_%__kont3952939530%_
                               _%hd3657436957%_
                               _%hd3650637191%_)
                              (if (gx#identifier? _%hd3657436957%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39891_|
                                       _%hd3657436957%_)
                                      (if (gx#stx-pair? _%tl3657536960%_)
                                          (let ((_%e3659636853%_
                                                 (gx#syntax-e
                                                  _%tl3657536960%_)))
                                            (let ((_%tl3659836860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3659636853%_)))
                                                  (_%hd3659736857%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3659636853%_))))
                                              (if (gx#stx-null?
                                                   _%tl3659836860%_)
                                                  (_%__kont3953339534%_
                                                   _%hd3659736857%_
                                                   _%hd3650637191%_
                                                   _%hd3650337181%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3649736643%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3649736643%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3649736643%_)))
                                  (if (gx#stx-datum? _%hd3657436957%_)
                                      (let ((_%e3661136780%_
                                             (gx#stx-e _%hd3657436957%_)))
                                        (if (equal? _%e3661136780%_ '::)
                                            (if (gx#stx-pair? _%tl3657536960%_)
                                                (let ((_%e3661236784%_
                                                       (gx#syntax-e
                                                        _%tl3657536960%_)))
                                                  (let ((_%tl3661436791%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3661236784%_)))
                                                        (_%hd3661336788%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3661236784%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3661436791%_)
                                                        (_%__kont3953539536%_
                                                         _%hd3661336788%_
                                                         _%hd3650637191%_
                                                         _%hd3650337181%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3661436791%_)
                                                            (let ((_%e3663236694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3661436791%_)))
                      (let ((_%tl3663436701%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3663236694%_)))
                            (_%hd3663336698%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3663236694%_))))
                        (if (gx#identifier? _%hd3663336698%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39892_|
                                 _%hd3663336698%_)
                                (if (gx#stx-pair? _%tl3663436701%_)
                                    (let ((_%e3663536704%_
                                           (gx#syntax-e _%tl3663436701%_)))
                                      (let ((_%tl3663736711%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3663536704%_)))
                                            (_%hd3663636708%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3663536704%_))))
                                        (if (gx#stx-null? _%tl3663736711%_)
                                            (_%__kont3953739538%_
                                             _%hd3663636708%_
                                             _%hd3661336788%_
                                             _%hd3650637191%_
                                             _%hd3650337181%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3649736643%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3649736643%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3649736643%_)))
                            (let () (declare (not safe)) (_%g3649736643%_)))))
                    (let () (declare (not safe)) (_%g3649736643%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3649736643%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3649736643%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3649736643%_)))))))
                      (if (gx#stx-null? _%tl3650737194%_)
                          (_%__kont3953139532%_
                           _%hd3650637191%_
                           _%hd3650337181%_)
                          (let () (declare (not safe)) (_%g3649736643%_)))))
              (if (gx#stx-pair? _%tl3650737194%_)
                  (let ((_%e3657336953%_ (gx#syntax-e _%tl3650737194%_)))
                    (let ((_%tl3657536960%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3657336953%_)))
                          (_%hd3657436957%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3657336953%_))))
                      (if (gx#stx-null? _%tl3657536960%_)
                          (_%__kont3952939530%_
                           _%hd3657436957%_
                           _%hd3650637191%_)
                          (if (gx#identifier? _%hd3657436957%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39891_|
                                   _%hd3657436957%_)
                                  (if (gx#stx-pair? _%tl3657536960%_)
                                      (let ((_%e3659636853%_
                                             (gx#syntax-e _%tl3657536960%_)))
                                        (let ((_%tl3659836860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3659636853%_)))
                                              (_%hd3659736857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3659636853%_))))
                                          (if (gx#stx-null? _%tl3659836860%_)
                                              (_%__kont3953339534%_
                                               _%hd3659736857%_
                                               _%hd3650637191%_
                                               _%hd3650337181%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3649736643%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3649736643%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3649736643%_)))
                              (if (gx#stx-datum? _%hd3657436957%_)
                                  (let ((_%e3661136780%_
                                         (gx#stx-e _%hd3657436957%_)))
                                    (if (equal? _%e3661136780%_ '::)
                                        (if (gx#stx-pair? _%tl3657536960%_)
                                            (let ((_%e3661236784%_
                                                   (gx#syntax-e
                                                    _%tl3657536960%_)))
                                              (let ((_%tl3661436791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3661236784%_)))
                                                    (_%hd3661336788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3661236784%_))))
                                                (if (gx#stx-null?
                                                     _%tl3661436791%_)
                                                    (_%__kont3953539536%_
                                                     _%hd3661336788%_
                                                     _%hd3650637191%_
                                                     _%hd3650337181%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3661436791%_)
                                                        (let ((_%e3663236694%_
                                                               (gx#syntax-e
                                                                _%tl3661436791%_)))
                                                          (let ((_%tl3663436701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3663236694%_)))
                        (_%hd3663336698%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3663236694%_))))
                    (if (gx#identifier? _%hd3663336698%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39892_|
                             _%hd3663336698%_)
                            (if (gx#stx-pair? _%tl3663436701%_)
                                (let ((_%e3663536704%_
                                       (gx#syntax-e _%tl3663436701%_)))
                                  (let ((_%tl3663736711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3663536704%_)))
                                        (_%hd3663636708%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3663536704%_))))
                                    (if (gx#stx-null? _%tl3663736711%_)
                                        (_%__kont3953739538%_
                                         _%hd3663636708%_
                                         _%hd3661336788%_
                                         _%hd3650637191%_
                                         _%hd3650337181%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3649736643%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3649736643%_)))
                            (let () (declare (not safe)) (_%g3649736643%_)))
                        (let () (declare (not safe)) (_%g3649736643%_)))))
                (let () (declare (not safe)) (_%g3649736643%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3649736643%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3649736643%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3649736643%_)))))))
                  (if (gx#stx-null? _%tl3650737194%_)
                      (_%__kont3953139532%_ _%hd3650637191%_ _%hd3650337181%_)
                      (let () (declare (not safe)) (_%g3649736643%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3650737194%_)
                                              (let ((_%e3657336953%_
                                                     (gx#syntax-e
                                                      _%tl3650737194%_)))
                                                (let ((_%tl3657536960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3657336953%_)))
                                                      (_%hd3657436957%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3657336953%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3657536960%_)
                                                      (_%__kont3952939530%_
                                                       _%hd3657436957%_
                                                       _%hd3650637191%_)
                                                      (if (gx#identifier?
                                                           _%hd3657436957%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39891_|
                                                               _%hd3657436957%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3657536960%_)
                          (let ((_%e3659636853%_
                                 (gx#syntax-e _%tl3657536960%_)))
                            (let ((_%tl3659836860%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3659636853%_)))
                                  (_%hd3659736857%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3659636853%_))))
                              (if (gx#stx-null? _%tl3659836860%_)
                                  (_%__kont3953339534%_
                                   _%hd3659736857%_
                                   _%hd3650637191%_
                                   _%hd3650337181%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3649736643%_)))))
                          (let () (declare (not safe)) (_%g3649736643%_)))
                      (let () (declare (not safe)) (_%g3649736643%_)))
                  (if (gx#stx-datum? _%hd3657436957%_)
                      (let ((_%e3661136780%_ (gx#stx-e _%hd3657436957%_)))
                        (if (equal? _%e3661136780%_ '::)
                            (if (gx#stx-pair? _%tl3657536960%_)
                                (let ((_%e3661236784%_
                                       (gx#syntax-e _%tl3657536960%_)))
                                  (let ((_%tl3661436791%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3661236784%_)))
                                        (_%hd3661336788%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3661236784%_))))
                                    (if (gx#stx-null? _%tl3661436791%_)
                                        (_%__kont3953539536%_
                                         _%hd3661336788%_
                                         _%hd3650637191%_
                                         _%hd3650337181%_)
                                        (if (gx#stx-pair? _%tl3661436791%_)
                                            (let ((_%e3663236694%_
                                                   (gx#syntax-e
                                                    _%tl3661436791%_)))
                                              (let ((_%tl3663436701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3663236694%_)))
                                                    (_%hd3663336698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3663236694%_))))
                                                (if (gx#identifier?
                                                     _%hd3663336698%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39892_|
                                                         _%hd3663336698%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3663436701%_)
                                                            (let ((_%e3663536704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3663436701%_)))
                      (let ((_%tl3663736711%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3663536704%_)))
                            (_%hd3663636708%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3663536704%_))))
                        (if (gx#stx-null? _%tl3663736711%_)
                            (_%__kont3953739538%_
                             _%hd3663636708%_
                             _%hd3661336788%_
                             _%hd3650637191%_
                             _%hd3650337181%_)
                            (let () (declare (not safe)) (_%g3649736643%_)))))
                    (let () (declare (not safe)) (_%g3649736643%_)))
                (let () (declare (not safe)) (_%g3649736643%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3649736643%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3649736643%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3649736643%_)))
                            (let () (declare (not safe)) (_%g3649736643%_))))
                      (let () (declare (not safe)) (_%g3649736643%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3650737194%_)
                                                  (_%__kont3953139532%_
                                                   _%hd3650637191%_
                                                   _%hd3650337181%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3649736643%_)))))))
                                  (if (gx#stx-pair? _%tl3650737194%_)
                                      (let ((_%e3657336953%_
                                             (gx#syntax-e _%tl3650737194%_)))
                                        (let ((_%tl3657536960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3657336953%_)))
                                              (_%hd3657436957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3657336953%_))))
                                          (if (gx#stx-null? _%tl3657536960%_)
                                              (_%__kont3952939530%_
                                               _%hd3657436957%_
                                               _%hd3650637191%_)
                                              (if (gx#identifier?
                                                   _%hd3657436957%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39891_|
                                                       _%hd3657436957%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3657536960%_)
                                                          (let ((_%e3659636853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3657536960%_)))
                    (let ((_%tl3659836860%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3659636853%_)))
                          (_%hd3659736857%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3659636853%_))))
                      (if (gx#stx-null? _%tl3659836860%_)
                          (_%__kont3953339534%_
                           _%hd3659736857%_
                           _%hd3650637191%_
                           _%hd3650337181%_)
                          (let () (declare (not safe)) (_%g3649736643%_)))))
                  (let () (declare (not safe)) (_%g3649736643%_)))
              (let () (declare (not safe)) (_%g3649736643%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3657436957%_)
                                                      (let ((_%e3661136780%_
                                                             (gx#stx-e
                                                              _%hd3657436957%_)))
                                                        (if (equal? _%e3661136780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3657536960%_)
                        (let ((_%e3661236784%_ (gx#syntax-e _%tl3657536960%_)))
                          (let ((_%tl3661436791%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3661236784%_)))
                                (_%hd3661336788%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3661236784%_))))
                            (if (gx#stx-null? _%tl3661436791%_)
                                (_%__kont3953539536%_
                                 _%hd3661336788%_
                                 _%hd3650637191%_
                                 _%hd3650337181%_)
                                (if (gx#stx-pair? _%tl3661436791%_)
                                    (let ((_%e3663236694%_
                                           (gx#syntax-e _%tl3661436791%_)))
                                      (let ((_%tl3663436701%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3663236694%_)))
                                            (_%hd3663336698%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3663236694%_))))
                                        (if (gx#identifier? _%hd3663336698%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39892_|
                                                 _%hd3663336698%_)
                                                (if (gx#stx-pair?
                                                     _%tl3663436701%_)
                                                    (let ((_%e3663536704%_
                                                           (gx#syntax-e
                                                            _%tl3663436701%_)))
                                                      (let ((_%tl3663736711%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3663536704%_)))
                    (_%hd3663636708%_
                     (let () (declare (not safe)) (##car _%e3663536704%_))))
                (if (gx#stx-null? _%tl3663736711%_)
                    (_%__kont3953739538%_
                     _%hd3663636708%_
                     _%hd3661336788%_
                     _%hd3650637191%_
                     _%hd3650337181%_)
                    (let () (declare (not safe)) (_%g3649736643%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3649736643%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3649736643%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3649736643%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3649736643%_))))))
                        (let () (declare (not safe)) (_%g3649736643%_)))
                    (let () (declare (not safe)) (_%g3649736643%_))))
              (let () (declare (not safe)) (_%g3649736643%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3650737194%_)
                                          (_%__kont3953139532%_
                                           _%hd3650637191%_
                                           _%hd3650337181%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3649736643%_)))))))
                          (let () (declare (not safe)) (_%g3649736643%_)))))
                  (let () (declare (not safe)) (_%g3649736643%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37286%_)
        (let* ((_%__stx3978439785%_ _%$stx37286%_)
               (_%g3729137325%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3978439785%_))))
          (let ((_%__kont3978739788%_
                 (lambda (_%L37429%_ _%L37431%_ _%L37432%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37432%_
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
                                       (cons _%L37431%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37429%_ '()))
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
                (_%__kont3978939790%_
                 (lambda (_%L37362%_ _%L37364%_ _%L37365%_)
                   (cons _%L37365%_
                         (cons _%L37364%_
                               (cons _%L37362%_
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
            (let ((_%__match3981739818%_
                   (lambda (_%e3729637389%_
                            _%hd3729737393%_
                            _%tl3729837396%_
                            _%e3729937399%_
                            _%hd3730037403%_
                            _%tl3730137406%_
                            _%e3730237409%_
                            _%hd3730337413%_
                            _%tl3730437416%_
                            _%e3730537419%_
                            _%hd3730637423%_
                            _%tl3730737426%_)
                     (let ((_%L37429%_ _%hd3730637423%_)
                           (_%L37431%_ _%hd3730337413%_)
                           (_%L37432%_ _%hd3730037403%_))
                       (if (gx#identifier? _%L37432%_)
                           (_%__kont3978739788%_
                            _%L37429%_
                            _%L37431%_
                            _%L37432%_)
                           (let () (declare (not safe)) (_%g3729137325%_)))))))
              (if (gx#stx-pair? _%__stx3978439785%_)
                  (let ((_%e3729637389%_ (gx#syntax-e _%__stx3978439785%_)))
                    (let ((_%tl3729837396%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3729637389%_)))
                          (_%hd3729737393%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3729637389%_))))
                      (if (gx#stx-pair? _%tl3729837396%_)
                          (let ((_%e3729937399%_
                                 (gx#syntax-e _%tl3729837396%_)))
                            (let ((_%tl3730137406%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3729937399%_)))
                                  (_%hd3730037403%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3729937399%_))))
                              (if (gx#stx-pair? _%tl3730137406%_)
                                  (let ((_%e3730237409%_
                                         (gx#syntax-e _%tl3730137406%_)))
                                    (let ((_%tl3730437416%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3730237409%_)))
                                          (_%hd3730337413%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3730237409%_))))
                                      (if (gx#stx-pair? _%tl3730437416%_)
                                          (let ((_%e3730537419%_
                                                 (gx#syntax-e
                                                  _%tl3730437416%_)))
                                            (let ((_%tl3730737426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3730537419%_)))
                                                  (_%hd3730637423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3730537419%_))))
                                              (if (gx#stx-null?
                                                   _%tl3730737426%_)
                                                  (_%__match3981739818%_
                                                   _%e3729637389%_
                                                   _%hd3729737393%_
                                                   _%tl3729837396%_
                                                   _%e3729937399%_
                                                   _%hd3730037403%_
                                                   _%tl3730137406%_
                                                   _%e3730237409%_
                                                   _%hd3730337413%_
                                                   _%tl3730437416%_
                                                   _%e3730537419%_
                                                   _%hd3730637423%_
                                                   _%tl3730737426%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3729137325%_)))))
                                          (if (gx#stx-null? _%tl3730437416%_)
                                              (_%__kont3978939790%_
                                               _%hd3730337413%_
                                               _%hd3730037403%_
                                               _%hd3729737393%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3729137325%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3729137325%_)))))
                          (let () (declare (not safe)) (_%g3729137325%_)))))
                  (let () (declare (not safe)) (_%g3729137325%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37454%_)
        (let* ((_%g3745837473%_
                (lambda (_%g3745937469%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3745937469%_)))
               (_%g3745737516%_
                (lambda (_%g3745937477%_)
                  (if (gx#stx-pair? _%g3745937477%_)
                      (let ((_%e3746237480%_ (gx#syntax-e _%g3745937477%_)))
                        (let ((_%hd3746337484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3746237480%_)))
                              (_%tl3746437487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3746237480%_))))
                          (if (gx#stx-pair? _%tl3746437487%_)
                              (let ((_%e3746537490%_
                                     (gx#syntax-e _%tl3746437487%_)))
                                (let ((_%hd3746637494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3746537490%_)))
                                      (_%tl3746737497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3746537490%_))))
                                  ((lambda (_%L37500%_ _%L37502%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37502%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37500%_)
                                                       '()))))
                                   _%tl3746737497%_
                                   _%hd3746637494%_)))
                              (_%g3745837473%_ _%g3745937477%_))))
                      (_%g3745837473%_ _%g3745937477%_)))))
          (_%g3745737516%_ _%$stx37454%_))))))
