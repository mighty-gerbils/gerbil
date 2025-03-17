(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39956_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39957_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39958_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39959_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39960_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39961_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39962_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39963_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39964_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39965_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39966_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39967_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39968_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39969_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39970_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39983_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39991_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39992_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39993_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39998_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39999_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40000_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40001_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40002_|
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
      (lambda _%$args35255%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35255%_)))
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
      (lambda (_%stx35252%_)
        (if (gx#identifier? _%stx35252%_)
            (let ((__tmp39955 (gx#syntax-local-value _%stx35252%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39955))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33552%_ _%match-stx33554%_)
        (letrec ((_%parse133556%_
                  (lambda (_%hd33915%_)
                    (let* ((_%__stx3774337744%_ _%hd33915%_)
                           (_%g3394134083%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3774337744%_))))
                      (let ((_%__kont3774637747%_
                             (lambda (_%L35015%_ _%L35017%_)
                               (let* ((_%__stx3766337664%_ _%L35015%_)
                                      (_%g3503435067%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3766337664%_))))
                                 (let ((_%__kont3766637667%_
                                        (lambda ()
                                          (cons '?: (cons _%L35017%_ '()))))
                                       (_%__kont3766837669%_
                                        (lambda (_%L35208%_)
                                          (cons '?:
                                                (cons _%L35017%_
                                                      (cons (_%parse133556%_
                                                             _%L35208%_)
                                                            '())))))
                                       (_%__kont3767037671%_
                                        (lambda (_%L35178%_)
                                          (cons '?:
                                                (cons _%L35017%_
                                                      (cons '=>:
                                                            (cons (_%parse133556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L35178%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3767237673%_
                                        (lambda (_%L35129%_ _%L35131%_)
                                          (cons '?:
                                                (cons _%L35017%_
                                                      (cons '::
                                                            (cons _%L35131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133556%_ _%L35129%_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3767437675%_
                                        (lambda ()
                                          (_%parse-error33563%_ _%hd33915%_))))
                                   (let ((_%g3503035219%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3766337664%_)
                                                (let ((_%e3503735198%_
                                                       (gx#syntax-e
                                                        _%__stx3766337664%_)))
                                                  (let ((_%tl3503935205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3503735198%_)))
                                                        (_%hd3503835202%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3503735198%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3503935205%_)
                                                        (_%__kont3766837669%_
                                                         _%hd3503835202%_)
                                                        (if (gx#identifier?
                                                             _%hd3503835202%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39956_|
                         _%hd3503835202%_)
                        (if (gx#stx-pair? _%tl3503935205%_)
                            (let ((_%e3504435168%_
                                   (gx#syntax-e _%tl3503935205%_)))
                              (let ((_%tl3504635175%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3504435168%_)))
                                    (_%hd3504535172%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3504435168%_))))
                                (if (gx#stx-null? _%tl3504635175%_)
                                    (_%__kont3767037671%_ _%hd3504535172%_)
                                    (_%__kont3767437675%_))))
                            (_%__kont3767437675%_))
                        (_%__kont3767437675%_))
                    (if (gx#stx-datum? _%hd3503835202%_)
                        (let ((_%e3505235095%_ (gx#stx-e _%hd3503835202%_)))
                          (if (equal? _%e3505235095%_ '::)
                              (if (gx#stx-pair? _%tl3503935205%_)
                                  (let ((_%e3505335099%_
                                         (gx#syntax-e _%tl3503935205%_)))
                                    (let ((_%tl3505535106%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3505335099%_)))
                                          (_%hd3505435103%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3505335099%_))))
                                      (if (gx#stx-pair? _%tl3505535106%_)
                                          (let ((_%e3505635109%_
                                                 (gx#syntax-e
                                                  _%tl3505535106%_)))
                                            (let ((_%tl3505835116%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3505635109%_)))
                                                  (_%hd3505735113%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3505635109%_))))
                                              (if (gx#identifier?
                                                   _%hd3505735113%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39957_|
                                                       _%hd3505735113%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3505835116%_)
                                                          (let ((_%e3505935119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3505835116%_)))
                    (let ((_%tl3506135126%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3505935119%_)))
                          (_%hd3506035123%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3505935119%_))))
                      (if (gx#stx-null? _%tl3506135126%_)
                          (_%__kont3767237673%_
                           _%hd3506035123%_
                           _%hd3505435103%_)
                          (_%__kont3767437675%_))))
                  (_%__kont3767437675%_))
              (_%__kont3767437675%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3767437675%_))))
                                          (_%__kont3767437675%_))))
                                  (_%__kont3767437675%_))
                              (_%__kont3767437675%_)))
                        (_%__kont3767437675%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3767437675%_)))))
                                     (if (gx#stx-null? _%__stx3766337664%_)
                                         (_%__kont3766637667%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3503035219%_))))))))
                            (_%__kont3774837749%_
                             (lambda (_%L34920%_)
                               (let* ((_%__stx3764537646%_ _%L34920%_)
                                      (_%g3493234943%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3764537646%_))))
                                 (let ((_%__kont3764837649%_
                                        (lambda (_%L34971%_)
                                          (_%parse133556%_ _%L34971%_)))
                                       (_%__kont3765037651%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133556%_
                                                 _%L34920%_)))))
                                   (if (gx#stx-pair? _%__stx3764537646%_)
                                       (let ((_%e3493534961%_
                                              (gx#syntax-e
                                               _%__stx3764537646%_)))
                                         (let ((_%tl3493734968%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3493534961%_)))
                                               (_%hd3493634965%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3493534961%_))))
                                           (if (gx#stx-null? _%tl3493734968%_)
                                               (_%__kont3764837649%_
                                                _%hd3493634965%_)
                                               (_%__kont3765037651%_))))
                                       (_%__kont3765037651%_))))))
                            (_%__kont3775037751%_
                             (lambda (_%L34835%_)
                               (let* ((_%__stx3762737628%_ _%L34835%_)
                                      (_%g3484734858%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3762737628%_))))
                                 (let ((_%__kont3763037631%_
                                        (lambda (_%L34886%_)
                                          (_%parse133556%_ _%L34886%_)))
                                       (_%__kont3763237633%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133556%_
                                                 _%L34835%_)))))
                                   (if (gx#stx-pair? _%__stx3762737628%_)
                                       (let ((_%e3485034876%_
                                              (gx#syntax-e
                                               _%__stx3762737628%_)))
                                         (let ((_%tl3485234883%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3485034876%_)))
                                               (_%hd3485134880%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3485034876%_))))
                                           (if (gx#stx-null? _%tl3485234883%_)
                                               (_%__kont3763037631%_
                                                _%hd3485134880%_)
                                               (_%__kont3763237633%_))))
                                       (_%__kont3763237633%_))))))
                            (_%__kont3775237753%_
                             (lambda (_%L34805%_)
                               (cons 'not:
                                     (cons (_%parse133556%_ _%L34805%_) '()))))
                            (_%__kont3775437755%_
                             (lambda (_%L34761%_ _%L34763%_)
                               (cons 'cons:
                                     (cons (_%parse133556%_ _%L34763%_)
                                           (cons (_%parse133556%_ _%L34761%_)
                                                 '())))))
                            (_%__kont3775637757%_
                             (lambda (_%L34705%_ _%L34707%_ _%L34708%_)
                               (if (gx#stx-null? _%L34705%_)
                                   (cons 'cons:
                                         (cons (_%parse133556%_ _%L34708%_)
                                               (cons (_%parse133556%_
                                                      _%L34707%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133556%_ _%L34708%_)
                                               (cons (_%parse133556%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%L34707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L34705%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3775837759%_
                             (lambda (_%L34657%_)
                               (_%parse-list33558%_ _%L34657%_)))
                            (_%__kont3776037761%_
                             (lambda (_%L34627%_)
                               (cons 'box:
                                     (cons (_%parse133556%_ _%L34627%_) '()))))
                            (_%__kont3776237763%_
                             (lambda (_%L34590%_)
                               (cons 'box:
                                     (cons (_%parse133556%_ _%L34590%_) '()))))
                            (_%__kont3776437765%_
                             (lambda (_%L34566%_)
                               (_%parse133556%_ _%L34566%_)))
                            (_%__kont3776637767%_
                             (lambda (_%L34528%_)
                               (cons 'values:
                                     (cons (_%parse-vector33559%_ _%L34528%_)
                                           '()))))
                            (_%__kont3776837769%_
                             (lambda (_%L34500%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33559%_ _%L34500%_)
                                           '()))))
                            (_%__kont3777037771%_
                             (lambda (_%L34461%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33559%_
                                            (foldr (lambda (_%g3447434477%_
                                                            _%g3447534480%_)
                                                     (cons _%g3447434477%_
                                                           _%g3447534480%_))
                                                   '()
                                                   _%L34461%_))
                                           '()))))
                            (_%__kont3777437775%_
                             (lambda (_%L34407%_ _%L34409%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L34409%_)
                                           (cons (_%parse-vector33559%_
                                                  _%L34407%_)
                                                 '())))))
                            (_%__kont3777637777%_
                             (lambda (_%L34377%_ _%L34379%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L34379%_)
                                           (cons (_%parse-class-body33561%_
                                                  _%L34377%_)
                                                 '())))))
                            (_%__kont3777837779%_
                             (lambda (_%L34337%_ _%L34339%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L34339%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L34337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3778037781%_
                             (lambda (_%L34297%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34297%_) '()))))
                            (_%__kont3778237783%_
                             (lambda (_%L34257%_)
                               (_%parse-qq33562%_ _%L34257%_)))
                            (_%__kont3778437785%_
                             (lambda (_%L34213%_ _%L34215%_)
                               (cons 'apply:
                                     (cons _%L34215%_
                                           (cons (_%parse133556%_ _%L34213%_)
                                                 '())))))
                            (_%__kont3778637787%_
                             (lambda (_%L34161%_)
                               (_%parse133556%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%L34161%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33915%_)
                                  (let ((_%$e34172%_
                                         (gx#stx-source _%hd33915%_)))
                                    (if _%$e34172%_
                                        _%$e34172%_
                                        (gx#stx-source _%stx33552%_))))))))
                            (_%__kont3778837789%_
                             (lambda (_%L34135%_) (cons 'any: '())))
                            (_%__kont3779037791%_
                             (lambda (_%L34119%_)
                               (cons 'var: (cons _%L34119%_ '()))))
                            (_%__kont3779237793%_
                             (lambda (_%L34101%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34101%_) '()))))
                            (_%__kont3779437795%_
                             (lambda () (_%parse-error33563%_ _%hd33915%_))))
                        (let* ((_%g3393934112%_
                                (lambda ()
                                  (let ((_%L34101%_ _%__stx3774337744%_))
                                    (if (gx#stx-datum? _%L34101%_)
                                        (_%__kont3779237793%_ _%L34101%_)
                                        (_%__kont3779437795%_)))))
                               (_%g3393834128%_
                                (lambda ()
                                  (let ((_%L34119%_ _%__stx3774337744%_))
                                    (if (and (gx#identifier? _%L34119%_)
                                             (not (gx#ellipsis? _%L34119%_)))
                                        (_%__kont3779037791%_ _%L34119%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3393934112%_))))))
                               (_%g3393734144%_
                                (lambda ()
                                  (let ((_%L34135%_ _%__stx3774337744%_))
                                    (if (gx#underscore? _%L34135%_)
                                        (_%__kont3778837789%_ _%L34135%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3393834128%_))))))
                               (_%__match3807038071%_
                                (lambda (_%e3407234151%_
                                         _%hd3407334155%_
                                         _%tl3407434158%_)
                                  (let ((_%L34161%_ _%hd3407334155%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%L34161%_)
                                        (_%__kont3778637787%_ _%L34161%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3393734144%_))))))
                               (_%__match3800438005%_
                                (lambda (_%e3404034317%_
                                         _%hd3404134321%_
                                         _%tl3404234324%_
                                         _%e3404334327%_
                                         _%hd3404434331%_
                                         _%tl3404534334%_)
                                  (let ((_%L34337%_ _%hd3404434331%_)
                                        (_%L34339%_ _%hd3404134321%_))
                                    (if (and (gx#identifier? _%L34339%_)
                                             (or (gx#free-identifier=?
                                                  _%L34339%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L34339%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L34339%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3777837779%_
                                         _%L34337%_
                                         _%L34339%_)
                                        (if (gx#identifier? _%hd3404134321%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39958_|
                                                 _%hd3404134321%_)
                                                (_%__kont3778037781%_
                                                 _%hd3404434331%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39959_|
                                                     _%hd3404134321%_)
                                                    (_%__kont3778237783%_
                                                     _%hd3404434331%_)
                                                    (_%__match3807038071%_
                                                     _%e3404034317%_
                                                     _%hd3404134321%_
                                                     _%tl3404234324%_)))
                                            (_%__match3807038071%_
                                             _%e3404034317%_
                                             _%hd3404134321%_
                                             _%tl3404234324%_))))))
                               (_%__match3799037991%_
                                (lambda (_%e3403534367%_
                                         _%hd3403634371%_
                                         _%tl3403734374%_)
                                  (let ((_%L34377%_ _%tl3403734374%_)
                                        (_%L34379%_ _%hd3403634371%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L34379%_))
                                        (_%__kont3777637777%_
                                         _%L34377%_
                                         _%L34379%_)
                                        (if (gx#stx-pair? _%tl3403734374%_)
                                            (let ((_%e3404334327%_
                                                   (gx#syntax-e
                                                    _%tl3403734374%_)))
                                              (let ((_%tl3404534334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3404334327%_)))
                                                    (_%hd3404434331%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3404334327%_))))
                                                (if (gx#stx-null?
                                                     _%tl3404534334%_)
                                                    (_%__match3800438005%_
                                                     _%e3403534367%_
                                                     _%hd3403634371%_
                                                     _%tl3403734374%_
                                                     _%e3404334327%_
                                                     _%hd3404434331%_
                                                     _%tl3404534334%_)
                                                    (if (gx#identifier?
                                                         _%hd3403634371%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39958_|
                                                             _%hd3403634371%_)
                                                            (_%__match3807038071%_
                                                             _%e3403534367%_
                                                             _%hd3403634371%_
                                                             _%tl3403734374%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39959_|
                         _%hd3403634371%_)
                        (_%__match3807038071%_
                         _%e3403534367%_
                         _%hd3403634371%_
                         _%tl3403734374%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39960_|
                             _%hd3403634371%_)
                            (if (gx#stx-pair? _%tl3404534334%_)
                                (let ((_%e3406834203%_
                                       (gx#syntax-e _%tl3404534334%_)))
                                  (let ((_%tl3407034210%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3406834203%_)))
                                        (_%hd3406934207%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3406834203%_))))
                                    (if (gx#stx-null? _%tl3407034210%_)
                                        (_%__kont3778437785%_
                                         _%hd3406934207%_
                                         _%hd3404434331%_)
                                        (_%__match3807038071%_
                                         _%e3403534367%_
                                         _%hd3403634371%_
                                         _%tl3403734374%_))))
                                (_%__match3807038071%_
                                 _%e3403534367%_
                                 _%hd3403634371%_
                                 _%tl3403734374%_))
                            (_%__match3807038071%_
                             _%e3403534367%_
                             _%hd3403634371%_
                             _%tl3403734374%_))))
                (_%__match3807038071%_
                 _%e3403534367%_
                 _%hd3403634371%_
                 _%tl3403734374%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3807038071%_
                                             _%e3403534367%_
                                             _%hd3403634371%_
                                             _%tl3403734374%_))))))
                               (_%__match3798437985%_
                                (lambda (_%e3403034397%_
                                         _%hd3403134401%_
                                         _%tl3403234404%_)
                                  (let ((_%L34407%_ _%tl3403234404%_)
                                        (_%L34409%_ _%hd3403134401%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L34409%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3777437775%_
                                         _%L34407%_
                                         _%L34409%_)
                                        (_%__match3799037991%_
                                         _%e3403034397%_
                                         _%hd3403134401%_
                                         _%tl3403234404%_)))))
                               (_%__match3797837979%_
                                (lambda (_%e3401834427%_
                                         _%__splice3777237773%_
                                         _%target3401934431%_
                                         _%tl3402134434%_)
                                  (letrec ((_%loop3402234437%_
                                            (lambda (_%hd3402034441%_
                                                     _%body3402634444%_)
                                              (if (gx#stx-pair?
                                                   _%hd3402034441%_)
                                                  (let ((_%e3402334447%_
                                                         (gx#syntax-e
                                                          _%hd3402034441%_)))
                                                    (let ((_%lp-tl3402534454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3402334447%_)))
                                                          (_%lp-hd3402434451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3402334447%_))))
                                                      (_%loop3402234437%_
                                                       _%lp-tl3402534454%_
                                                       (cons _%lp-hd3402434451%_
                                                             _%body3402634444%_))))
                                                  (let ((_%body3402734457%_
                                                         (reverse _%body3402634444%_)))
                                                    (_%__kont3777037771%_
                                                     _%body3402734457%_))))))
                                    (_%loop3402234437%_
                                     _%target3401934431%_
                                     '()))))
                               (_%g3392934483%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3774337744%_)
                                      (let ((_%e3401834427%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3774337744%_))))
                                        (if (gx#stx-pair/null? _%e3401834427%_)
                                            (let ((_%__splice3777237773%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3401834427%_
                                                    '0)))
                                              (let ((_%tl3402134434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3777237773%_
                                                        '1)))
                                                    (_%target3401934431%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3777237773%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3402134434%_)
                                                    (_%__match3797837979%_
                                                     _%e3401834427%_
                                                     _%__splice3777237773%_
                                                     _%target3401934431%_
                                                     _%tl3402134434%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3393734144%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3393734144%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3393734144%_)))))
                               (_%g3392534600%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3774337744%_)
                                      (let ((_%e3400134586%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3774337744%_))))
                                        (_%__kont3776237763%_ _%e3400134586%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3392934483%_)))))
                               (_%__match3783237833%_
                                (lambda (_%e3395634825%_
                                         _%hd3395734829%_
                                         _%tl3395834832%_)
                                  (let ((_%L34835%_ _%tl3395834832%_))
                                    (if (gx#stx-list? _%L34835%_)
                                        (_%__kont3775037751%_ _%L34835%_)
                                        (_%__match3798437985%_
                                         _%e3395634825%_
                                         _%hd3395734829%_
                                         _%tl3395834832%_)))))
                               (_%__match3782237823%_
                                (lambda (_%e3395234910%_
                                         _%hd3395334914%_
                                         _%tl3395434917%_)
                                  (let ((_%L34920%_ _%tl3395434917%_))
                                    (if (gx#stx-list? _%L34920%_)
                                        (_%__kont3774837749%_ _%L34920%_)
                                        (_%__match3798437985%_
                                         _%e3395234910%_
                                         _%hd3395334914%_
                                         _%tl3395434917%_))))))
                          (if (gx#stx-pair? _%__stx3774337744%_)
                              (let ((_%e3394534995%_
                                     (gx#syntax-e _%__stx3774337744%_)))
                                (let ((_%tl3394735002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3394534995%_)))
                                      (_%hd3394634999%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3394534995%_))))
                                  (if (gx#identifier? _%hd3394634999%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39961_|
                                           _%hd3394634999%_)
                                          (if (gx#stx-pair? _%tl3394735002%_)
                                              (let ((_%e3394835005%_
                                                     (gx#syntax-e
                                                      _%tl3394735002%_)))
                                                (let ((_%tl3395035012%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3394835005%_)))
                                                      (_%hd3394935009%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3394835005%_))))
                                                  (_%__kont3774637747%_
                                                   _%tl3395035012%_
                                                   _%hd3394935009%_)))
                                              (_%__match3798437985%_
                                               _%e3394534995%_
                                               _%hd3394634999%_
                                               _%tl3394735002%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39962_|
                                               _%hd3394634999%_)
                                              (_%__match3782237823%_
                                               _%e3394534995%_
                                               _%hd3394634999%_
                                               _%tl3394735002%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39963_|
                                                   _%hd3394634999%_)
                                                  (_%__match3783237833%_
                                                   _%e3394534995%_
                                                   _%hd3394634999%_
                                                   _%tl3394735002%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39964_|
                                                       _%hd3394634999%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3394735002%_)
                                                          (let ((_%e3396334795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3394735002%_)))
                    (let ((_%tl3396534802%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3396334795%_)))
                          (_%hd3396434799%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3396334795%_))))
                      (if (gx#stx-null? _%tl3396534802%_)
                          (_%__kont3775237753%_ _%hd3396434799%_)
                          (_%__match3798437985%_
                           _%e3394534995%_
                           _%hd3394634999%_
                           _%tl3394735002%_))))
                  (_%__match3798437985%_
                   _%e3394534995%_
                   _%hd3394634999%_
                   _%tl3394735002%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39965_|
                   _%hd3394634999%_)
                  (if (gx#stx-pair? _%tl3394735002%_)
                      (let ((_%e3397134741%_ (gx#syntax-e _%tl3394735002%_)))
                        (let ((_%tl3397334748%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3397134741%_)))
                              (_%hd3397234745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3397134741%_))))
                          (if (gx#stx-pair? _%tl3397334748%_)
                              (let ((_%e3397434751%_
                                     (gx#syntax-e _%tl3397334748%_)))
                                (let ((_%tl3397634758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3397434751%_)))
                                      (_%hd3397534755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3397434751%_))))
                                  (if (gx#stx-null? _%tl3397634758%_)
                                      (_%__kont3775437755%_
                                       _%hd3397534755%_
                                       _%hd3397234745%_)
                                      (_%__match3798437985%_
                                       _%e3394534995%_
                                       _%hd3394634999%_
                                       _%tl3394735002%_))))
                              (_%__match3798437985%_
                               _%e3394534995%_
                               _%hd3394634999%_
                               _%tl3394735002%_))))
                      (_%__match3798437985%_
                       _%e3394534995%_
                       _%hd3394634999%_
                       _%tl3394735002%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39966_|
                       _%hd3394634999%_)
                      (if (gx#stx-pair? _%tl3394735002%_)
                          (let ((_%e3398334685%_
                                 (gx#syntax-e _%tl3394735002%_)))
                            (let ((_%tl3398534692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3398334685%_)))
                                  (_%hd3398434689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3398334685%_))))
                              (if (gx#stx-pair? _%tl3398534692%_)
                                  (let ((_%e3398634695%_
                                         (gx#syntax-e _%tl3398534692%_)))
                                    (let ((_%tl3398834702%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3398634695%_)))
                                          (_%hd3398734699%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3398634695%_))))
                                      (_%__kont3775637757%_
                                       _%tl3398834702%_
                                       _%hd3398734699%_
                                       _%hd3398434689%_)))
                                  (_%__match3798437985%_
                                   _%e3394534995%_
                                   _%hd3394634999%_
                                   _%tl3394735002%_))))
                          (_%__match3798437985%_
                           _%e3394534995%_
                           _%hd3394634999%_
                           _%tl3394735002%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39967_|
                           _%hd3394634999%_)
                          (_%__kont3775837759%_ _%tl3394735002%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39968_|
                               _%hd3394634999%_)
                              (if (gx#stx-pair? _%tl3394735002%_)
                                  (let ((_%e3399734617%_
                                         (gx#syntax-e _%tl3394735002%_)))
                                    (let ((_%tl3399934624%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3399734617%_)))
                                          (_%hd3399834621%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3399734617%_))))
                                      (if (gx#stx-null? _%tl3399934624%_)
                                          (_%__kont3776037761%_
                                           _%hd3399834621%_)
                                          (_%__match3798437985%_
                                           _%e3394534995%_
                                           _%hd3394634999%_
                                           _%tl3394735002%_))))
                                  (_%__match3798437985%_
                                   _%e3394534995%_
                                   _%hd3394634999%_
                                   _%tl3394735002%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39969_|
                                   _%hd3394634999%_)
                                  (if (gx#stx-pair? _%tl3394735002%_)
                                      (let ((_%e3400634556%_
                                             (gx#syntax-e _%tl3394735002%_)))
                                        (let ((_%tl3400834563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3400634556%_)))
                                              (_%hd3400734560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3400634556%_))))
                                          (if (gx#stx-null? _%tl3400834563%_)
                                              (_%__kont3776437765%_
                                               _%hd3400734560%_)
                                              (_%__kont3776637767%_
                                               _%tl3394735002%_))))
                                      (_%__kont3776637767%_ _%tl3394735002%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39970_|
                                       _%hd3394634999%_)
                                      (_%__kont3776837769%_ _%tl3394735002%_)
                                      (_%__match3798437985%_
                                       _%e3394534995%_
                                       _%hd3394634999%_
                                       _%tl3394735002%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3798437985%_
                                       _%e3394534995%_
                                       _%hd3394634999%_
                                       _%tl3394735002%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3392534600%_))))))))
                 (_%parse-list33558%_
                  (lambda (_%body33738%_)
                    (let* ((_%__stx3807338074%_ _%body33738%_)
                           (_%g3374433773%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3807338074%_))))
                      (let ((_%__kont3807638077%_
                             (lambda (_%L33897%_)
                               (_%parse133556%_ _%L33897%_)))
                            (_%__kont3807838079%_
                             (lambda (_%L33849%_ _%L33851%_ _%L33852%_)
                               (cons 'splice:
                                     (cons (_%parse133556%_ _%L33852%_)
                                           (cons (_%parse-list33558%_
                                                  _%L33849%_)
                                                 '())))))
                            (_%__kont3808038081%_
                             (lambda (_%L33807%_ _%L33809%_)
                               (cons 'cons:
                                     (cons (_%parse133556%_ _%L33809%_)
                                           (cons (_%parse-list33558%_
                                                  _%L33807%_)
                                                 '())))))
                            (_%__kont3808238083%_
                             (lambda ()
                               (if (gx#stx-null? _%body33738%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33738%_)
                                       (_%parse-error33563%_ _%body33738%_)
                                       (_%parse133556%_ _%body33738%_))))))
                        (let* ((_%__match3812238123%_
                                (lambda (_%e3376533797%_
                                         _%hd3376633801%_
                                         _%tl3376733804%_)
                                  (let ((_%L33807%_ _%tl3376733804%_)
                                        (_%L33809%_ _%hd3376633801%_))
                                    (if (gx#ellipsis? _%L33809%_)
                                        (_%__kont3808238083%_)
                                        (_%__kont3808038081%_
                                         _%L33807%_
                                         _%L33809%_)))))
                               (_%__match3811638117%_
                                (lambda (_%e3375733829%_
                                         _%hd3375833833%_
                                         _%tl3375933836%_
                                         _%e3376033839%_
                                         _%hd3376133843%_
                                         _%tl3376233846%_)
                                  (let ((_%L33849%_ _%tl3376233846%_)
                                        (_%L33851%_ _%hd3376133843%_)
                                        (_%L33852%_ _%hd3375833833%_))
                                    (if (gx#ellipsis? _%L33851%_)
                                        (_%__kont3807838079%_
                                         _%L33849%_
                                         _%L33851%_
                                         _%L33852%_)
                                        (_%__match3812238123%_
                                         _%e3375733829%_
                                         _%hd3375833833%_
                                         _%tl3375933836%_))))))
                          (if (gx#stx-pair? _%__stx3807338074%_)
                              (let ((_%e3374733873%_
                                     (gx#syntax-e _%__stx3807338074%_)))
                                (let ((_%tl3374933880%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3374733873%_)))
                                      (_%hd3374833877%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3374733873%_))))
                                  (if (gx#stx-datum? _%hd3374833877%_)
                                      (let ((_%e3375033883%_
                                             (gx#stx-e _%hd3374833877%_)))
                                        (if (equal? _%e3375033883%_ '::)
                                            (if (gx#stx-pair? _%tl3374933880%_)
                                                (let ((_%e3375133887%_
                                                       (gx#syntax-e
                                                        _%tl3374933880%_)))
                                                  (let ((_%tl3375333894%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3375133887%_)))
                                                        (_%hd3375233891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3375133887%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3375333894%_)
                                                        (_%__kont3807638077%_
                                                         _%hd3375233891%_)
                                                        (_%__match3811638117%_
                                                         _%e3374733873%_
                                                         _%hd3374833877%_
                                                         _%tl3374933880%_
                                                         _%e3375133887%_
                                                         _%hd3375233891%_
                                                         _%tl3375333894%_))))
                                                (_%__match3812238123%_
                                                 _%e3374733873%_
                                                 _%hd3374833877%_
                                                 _%tl3374933880%_))
                                            (if (gx#stx-pair? _%tl3374933880%_)
                                                (let ((_%e3376033839%_
                                                       (gx#syntax-e
                                                        _%tl3374933880%_)))
                                                  (let ((_%tl3376233846%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3376033839%_)))
                                                        (_%hd3376133843%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3376033839%_))))
                                                    (_%__match3811638117%_
                                                     _%e3374733873%_
                                                     _%hd3374833877%_
                                                     _%tl3374933880%_
                                                     _%e3376033839%_
                                                     _%hd3376133843%_
                                                     _%tl3376233846%_)))
                                                (_%__match3812238123%_
                                                 _%e3374733873%_
                                                 _%hd3374833877%_
                                                 _%tl3374933880%_))))
                                      (if (gx#stx-pair? _%tl3374933880%_)
                                          (let ((_%e3376033839%_
                                                 (gx#syntax-e
                                                  _%tl3374933880%_)))
                                            (let ((_%tl3376233846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3376033839%_)))
                                                  (_%hd3376133843%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3376033839%_))))
                                              (_%__match3811638117%_
                                               _%e3374733873%_
                                               _%hd3374833877%_
                                               _%tl3374933880%_
                                               _%e3376033839%_
                                               _%hd3376133843%_
                                               _%tl3376233846%_)))
                                          (_%__match3812238123%_
                                           _%e3374733873%_
                                           _%hd3374833877%_
                                           _%tl3374933880%_)))))
                              (_%__kont3808238083%_)))))))
                 (_%parse-vector33559%_
                  (lambda (_%body33735%_)
                    (if (_%simple-vector?33560%_ _%body33735%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133556%_ _%body33735%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33558%_ _%body33735%_)
                                    '())))))
                 (_%simple-vector?33560%_
                  (lambda (_%body33672%_)
                    (let* ((_%__stx3812538126%_ _%body33672%_)
                           (_%g3367633688%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3812538126%_))))
                      (let ((_%__kont3812838129%_
                             (lambda (_%L33716%_ _%L33718%_)
                               (if (gx#ellipsis? _%L33718%_)
                                   '#f
                                   (_%simple-vector?33560%_ _%L33716%_))))
                            (_%__kont3813038131%_
                             (lambda () (gx#stx-null? _%body33672%_))))
                        (if (gx#stx-pair? _%__stx3812538126%_)
                            (let ((_%e3368033706%_
                                   (gx#syntax-e _%__stx3812538126%_)))
                              (let ((_%tl3368233713%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3368033706%_)))
                                    (_%hd3368133710%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3368033706%_))))
                                (_%__kont3812838129%_
                                 _%tl3368233713%_
                                 _%hd3368133710%_)))
                            (_%__kont3813038131%_))))))
                 (_%parse-class-body33561%_
                  (lambda (_%body33581%_)
                    (let _%recur33584%_ ((_%rest33587%_ _%body33581%_))
                      (let* ((_%__stx3814138142%_ _%rest33587%_)
                             (_%g3359133607%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3814138142%_))))
                        (let ((_%__kont3814438145%_
                               (lambda (_%L33645%_ _%L33647%_ _%L33648%_)
                                 (cons _%L33648%_
                                       (cons (_%parse133556%_ _%L33647%_)
                                             (_%recur33584%_ _%L33645%_)))))
                              (_%__kont3814638147%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33587%_)
                                     '()
                                     (_%parse-error33563%_ _%rest33587%_)))))
                          (let ((_%__match3816038161%_
                                 (lambda (_%e3359633625%_
                                          _%hd3359733629%_
                                          _%tl3359833632%_
                                          _%e3359933635%_
                                          _%hd3360033639%_
                                          _%tl3360133642%_)
                                   (let ((_%L33645%_ _%tl3360133642%_)
                                         (_%L33647%_ _%hd3360033639%_)
                                         (_%L33648%_ _%hd3359733629%_))
                                     (if (gx#stx-keyword? _%L33648%_)
                                         (_%__kont3814438145%_
                                          _%L33645%_
                                          _%L33647%_
                                          _%L33648%_)
                                         (_%__kont3814638147%_))))))
                            (if (gx#stx-pair? _%__stx3814138142%_)
                                (let ((_%e3359633625%_
                                       (gx#syntax-e _%__stx3814138142%_)))
                                  (let ((_%tl3359833632%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3359633625%_)))
                                        (_%hd3359733629%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3359633625%_))))
                                    (if (gx#stx-pair? _%tl3359833632%_)
                                        (let ((_%e3359933635%_
                                               (gx#syntax-e _%tl3359833632%_)))
                                          (let ((_%tl3360133642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3359933635%_)))
                                                (_%hd3360033639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3359933635%_))))
                                            (_%__match3816038161%_
                                             _%e3359633625%_
                                             _%hd3359733629%_
                                             _%tl3359833632%_
                                             _%e3359933635%_
                                             _%hd3360033639%_
                                             _%tl3360133642%_)))
                                        (_%__kont3814638147%_))))
                                (_%__kont3814638147%_))))))))
                 (_%parse-qq33562%_
                  (lambda (_%hd33568%_)
                    (let ((_%g3357033577%_
                           (lambda (_%g3357133573%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3357133573%_))))
                      (_%g3357033577%_ _%hd33568%_))))
                 (_%parse-error33563%_
                  (lambda (_%hd33565%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33554%_
                               (cons _%match-stx33554%_
                                     (cons _%stx33552%_
                                           (cons _%hd33565%_ '())))
                               (cons _%stx33552%_ (cons _%hd33565%_ '())))))))
          (_%parse133556%_ _%stx33552%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35242%_)
        (let ((_%match-stx35245%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35242%_
           _%match-stx35245%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39972_
        (let ((_g39971_ (let () (declare (not safe)) (##length _g39972_))))
          (cond ((let () (declare (not safe)) (##fx= _g39971_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39972_))
                ((let () (declare (not safe)) (##fx= _g39971_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39972_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33537%_)
        (let ((__tmp39973
               (lambda (_%E33540%_)
                 (with-exception-handler
                  (let ((_%E!33543%_ (current-exception-handler)))
                    (lambda (_%e33546%_)
                      (if (syntax-error? _%e33546%_)
                          (_%E33540%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33543%_ _%e33546%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33537%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39973))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32272%_)
        (letrec ((_%loop32275%_
                  (lambda (_%ptree32562%_ _%vars32564%_ _%K32565%_)
                    (let* ((_%__stx3825938260%_ _%ptree32562%_)
                           (_%g3257832688%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3825938260%_))))
                      (let ((_%__kont3826238263%_
                             (lambda (_%L33318%_)
                               (let* ((_%__stx3817938180%_ _%L33318%_)
                                      (_%g3333533369%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3817938180%_))))
                                 (let ((_%__kont3818238183%_
                                        (lambda (_%L33518%_)
                                          (_%loop32275%_
                                           _%L33518%_
                                           _%vars32564%_
                                           _%K32565%_)))
                                       (_%__kont3818438185%_
                                        (lambda (_%L33487%_)
                                          (_%loop32275%_
                                           _%L33487%_
                                           _%vars32564%_
                                           _%K32565%_)))
                                       (_%__kont3818638187%_
                                        (lambda (_%L33435%_)
                                          (_%loop32275%_
                                           _%L33435%_
                                           _%vars32564%_
                                           _%K32565%_)))
                                       (_%__kont3818838189%_
                                        (lambda ()
                                          (_%K32565%_ _%vars32564%_))))
                                   (if (gx#stx-pair? _%__stx3817938180%_)
                                       (let ((_%e3333833508%_
                                              (gx#syntax-e
                                               _%__stx3817938180%_)))
                                         (let ((_%tl3334033515%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3333833508%_)))
                                               (_%hd3333933512%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3333833508%_))))
                                           (if (gx#stx-null? _%tl3334033515%_)
                                               (_%__kont3818238183%_
                                                _%hd3333933512%_)
                                               (if (gx#stx-datum?
                                                    _%hd3333933512%_)
                                                   (let ((_%e3334533473%_
                                                          (gx#stx-e
                                                           _%hd3333933512%_)))
                                                     (if (equal? _%e3334533473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3334033515%_)
                     (let ((_%e3334633477%_ (gx#syntax-e _%tl3334033515%_)))
                       (let ((_%tl3334833484%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3334633477%_)))
                             (_%hd3334733481%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3334633477%_))))
                         (if (gx#stx-null? _%tl3334833484%_)
                             (_%__kont3818438185%_ _%hd3334733481%_)
                             (_%__kont3818838189%_))))
                     (_%__kont3818838189%_))
                 (if (equal? _%e3334533473%_ '::)
                     (if (gx#stx-pair? _%tl3334033515%_)
                         (let ((_%e3335433401%_
                                (gx#syntax-e _%tl3334033515%_)))
                           (let ((_%tl3335633408%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3335433401%_)))
                                 (_%hd3335533405%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3335433401%_))))
                             (if (gx#stx-pair? _%tl3335633408%_)
                                 (let ((_%e3335733411%_
                                        (gx#syntax-e _%tl3335633408%_)))
                                   (let ((_%tl3335933418%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3335733411%_)))
                                         (_%hd3335833415%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3335733411%_))))
                                     (if (gx#stx-datum? _%hd3335833415%_)
                                         (let ((_%e3336033421%_
                                                (gx#stx-e _%hd3335833415%_)))
                                           (if (equal? _%e3336033421%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3335933418%_)
                                                   (let ((_%e3336133425%_
                                                          (gx#syntax-e
                                                           _%tl3335933418%_)))
                                                     (let ((_%tl3336333432%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3336133425%_)))
                                                           (_%hd3336233429%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3336133425%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3336333432%_)
                                                           (_%__kont3818638187%_
                                                            _%hd3336233429%_)
                                                           (_%__kont3818838189%_))))
                                                   (_%__kont3818838189%_))
                                               (_%__kont3818838189%_)))
                                         (_%__kont3818838189%_))))
                                 (_%__kont3818838189%_))))
                         (_%__kont3818838189%_))
                     (_%__kont3818838189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3818838189%_)))))
                                       (_%__kont3818838189%_))))))
                            (_%__kont3826438265%_
                             (lambda (_%L33205%_ _%L33207%_)
                               (let* ((_%__stx3816338164%_ _%L33205%_)
                                      (_%g3322333235%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3816338164%_))))
                                 (let ((_%__kont3816638167%_
                                        (lambda (_%L33263%_ _%L33265%_)
                                          (_%loop32275%_
                                           _%L33265%_
                                           _%vars32564%_
                                           (lambda (_%g3327733279%_)
                                             (_%loop32275%_
                                              (cons _%L33207%_ _%L33263%_)
                                              _%g3327733279%_
                                              _%K32565%_)))))
                                       (_%__kont3816838169%_
                                        (lambda ()
                                          (_%K32565%_ _%vars32564%_))))
                                   (if (gx#stx-pair? _%__stx3816338164%_)
                                       (let ((_%e3322733253%_
                                              (gx#syntax-e
                                               _%__stx3816338164%_)))
                                         (let ((_%tl3322933260%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3322733253%_)))
                                               (_%hd3322833257%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3322733253%_))))
                                           (_%__kont3816638167%_
                                            _%tl3322933260%_
                                            _%hd3322833257%_)))
                                       (_%__kont3816838169%_))))))
                            (_%__kont3826638267%_
                             (lambda (_%L33174%_)
                               (_%loop32275%_
                                _%L33174%_
                                _%vars32564%_
                                _%K32565%_)))
                            (_%__kont3826838269%_
                             (lambda (_%L33120%_ _%L33122%_)
                               (_%loop32275%_
                                _%L33122%_
                                _%vars32564%_
                                (lambda (_%g3313733139%_)
                                  (_%loop32275%_
                                   _%L33120%_
                                   _%g3313733139%_
                                   _%K32565%_)))))
                            (_%__kont3827038271%_
                             (lambda (_%L33056%_ _%L33058%_)
                               (_%loop32275%_
                                _%L33058%_
                                _%vars32564%_
                                (lambda (_%g3307333075%_)
                                  (_%loop32275%_
                                   _%L33056%_
                                   _%g3307333075%_
                                   _%K32565%_)))))
                            (_%__kont3827238273%_
                             (lambda (_%L33001%_)
                               (_%loop32275%_
                                _%L33001%_
                                _%vars32564%_
                                _%K32565%_)))
                            (_%__kont3827438275%_
                             (lambda (_%L32951%_ _%L32953%_)
                               (_%loop-vector32277%_
                                _%L32951%_
                                _%vars32564%_
                                _%K32565%_)))
                            (_%__kont3827638277%_
                             (lambda (_%L32908%_)
                               (_%loop-vector32277%_
                                _%L32908%_
                                _%vars32564%_
                                _%K32565%_)))
                            (_%__kont3827838279%_
                             (lambda (_%L32851%_)
                               (_%loop-class-list32279%_
                                _%L32851%_
                                _%vars32564%_
                                _%K32565%_)))
                            (_%__kont3828038281%_
                             (lambda (_%L32792%_ _%L32794%_)
                               (_%loop32275%_
                                _%L32792%_
                                _%vars32564%_
                                _%K32565%_)))
                            (_%__kont3828238283%_
                             (lambda (_%L32730%_)
                               (if (find (lambda (_%g3274532747%_)
                                           (gx#bound-identifier=?
                                            _%g3274532747%_
                                            _%L32730%_))
                                         _%vars32564%_)
                                   (_%K32565%_ _%vars32564%_)
                                   (_%K32565%_
                                    (cons _%L32730%_ _%vars32564%_)))))
                            (_%__kont3828438285%_
                             (lambda () (_%K32565%_ _%vars32564%_))))
                        (let* ((_%__match3841638417%_
                                (lambda (_%e3263532931%_
                                         _%hd3263632935%_
                                         _%tl3263732938%_
                                         _%e3263832941%_
                                         _%hd3263932945%_
                                         _%tl3264032948%_)
                                  (let ((_%L32951%_ _%hd3263932945%_)
                                        (_%L32953%_ _%hd3263632935%_))
                                    (if (or (gx#stx-eq? 'values: _%L32953%_)
                                            (gx#stx-eq? 'vector: _%L32953%_))
                                        (_%__kont3827438275%_
                                         _%L32951%_
                                         _%L32953%_)
                                        (if (gx#stx-datum? _%hd3263632935%_)
                                            (let ((_%e3264532884%_
                                                   (gx#stx-e
                                                    _%hd3263632935%_)))
                                              (if (equal? _%e3264532884%_
                                                          'struct:)
                                                  (_%__kont3828438285%_)
                                                  (if (equal? _%e3264532884%_
                                                              'class:)
                                                      (_%__kont3828438285%_)
                                                      (if (equal? _%e3264532884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3828438285%_)
                  (if (equal? _%e3264532884%_ 'var:)
                      (_%__kont3828238283%_ _%hd3263932945%_)
                      (_%__kont3828438285%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3828438285%_))))))
                               (_%__match3831038311%_
                                (lambda (_%e3259033195%_
                                         _%hd3259133199%_
                                         _%tl3259233202%_)
                                  (let ((_%L33205%_ _%tl3259233202%_)
                                        (_%L33207%_ _%hd3259133199%_))
                                    (if (or (gx#stx-eq? 'and: _%L33207%_)
                                            (gx#stx-eq? 'or: _%L33207%_))
                                        (_%__kont3826438265%_
                                         _%L33205%_
                                         _%L33207%_)
                                        (if (gx#stx-datum? _%hd3259133199%_)
                                            (let ((_%e3259733160%_
                                                   (gx#stx-e
                                                    _%hd3259133199%_)))
                                              (if (equal? _%e3259733160%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3259233202%_)
                                                      (let ((_%e3259833164%_
                                                             (gx#syntax-e
                                                              _%tl3259233202%_)))
                                                        (let ((_%tl3260033171%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3259833164%_)))
                      (_%hd3259933168%_
                       (let () (declare (not safe)) (##car _%e3259833164%_))))
                  (if (gx#stx-null? _%tl3260033171%_)
                      (_%__kont3826638267%_ _%hd3259933168%_)
                      (_%__kont3828438285%_))))
              (_%__kont3828438285%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3259733160%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3259233202%_)
                                                          (let ((_%e3260733100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3259233202%_)))
                    (let ((_%tl3260933107%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3260733100%_)))
                          (_%hd3260833104%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3260733100%_))))
                      (if (gx#stx-pair? _%tl3260933107%_)
                          (let ((_%e3261033110%_
                                 (gx#syntax-e _%tl3260933107%_)))
                            (let ((_%tl3261233117%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3261033110%_)))
                                  (_%hd3261133114%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3261033110%_))))
                              (if (gx#stx-null? _%tl3261233117%_)
                                  (_%__kont3826838269%_
                                   _%hd3261133114%_
                                   _%hd3260833104%_)
                                  (_%__kont3828438285%_))))
                          (if (gx#stx-null? _%tl3260933107%_)
                              (_%__match3841638417%_
                               _%e3259033195%_
                               _%hd3259133199%_
                               _%tl3259233202%_
                               _%e3260733100%_
                               _%hd3260833104%_
                               _%tl3260933107%_)
                              (_%__kont3828438285%_)))))
                  (_%__kont3828438285%_))
              (if (equal? _%e3259733160%_ 'splice:)
                  (if (gx#stx-pair? _%tl3259233202%_)
                      (let ((_%e3261933036%_ (gx#syntax-e _%tl3259233202%_)))
                        (let ((_%tl3262133043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3261933036%_)))
                              (_%hd3262033040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3261933036%_))))
                          (if (gx#stx-pair? _%tl3262133043%_)
                              (let ((_%e3262233046%_
                                     (gx#syntax-e _%tl3262133043%_)))
                                (let ((_%tl3262433053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3262233046%_)))
                                      (_%hd3262333050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3262233046%_))))
                                  (if (gx#stx-null? _%tl3262433053%_)
                                      (_%__kont3827038271%_
                                       _%hd3262333050%_
                                       _%hd3262033040%_)
                                      (_%__kont3828438285%_))))
                              (if (gx#stx-null? _%tl3262133043%_)
                                  (_%__match3841638417%_
                                   _%e3259033195%_
                                   _%hd3259133199%_
                                   _%tl3259233202%_
                                   _%e3261933036%_
                                   _%hd3262033040%_
                                   _%tl3262133043%_)
                                  (_%__kont3828438285%_)))))
                      (_%__kont3828438285%_))
                  (if (equal? _%e3259733160%_ 'box:)
                      (if (gx#stx-pair? _%tl3259233202%_)
                          (let ((_%e3263032991%_
                                 (gx#syntax-e _%tl3259233202%_)))
                            (let ((_%tl3263232998%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3263032991%_)))
                                  (_%hd3263132995%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3263032991%_))))
                              (if (gx#stx-null? _%tl3263232998%_)
                                  (_%__kont3827238273%_ _%hd3263132995%_)
                                  (_%__kont3828438285%_))))
                          (_%__kont3828438285%_))
                      (if (gx#stx-pair? _%tl3259233202%_)
                          (let ((_%e3263832941%_
                                 (gx#syntax-e _%tl3259233202%_)))
                            (let ((_%tl3264032948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3263832941%_)))
                                  (_%hd3263932945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3263832941%_))))
                              (if (gx#stx-null? _%tl3264032948%_)
                                  (_%__match3841638417%_
                                   _%e3259033195%_
                                   _%hd3259133199%_
                                   _%tl3259233202%_
                                   _%e3263832941%_
                                   _%hd3263932945%_
                                   _%tl3264032948%_)
                                  (if (equal? _%e3259733160%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3264032948%_)
                                          (let ((_%e3264932898%_
                                                 (gx#syntax-e
                                                  _%tl3264032948%_)))
                                            (let ((_%tl3265132905%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3264932898%_)))
                                                  (_%hd3265032902%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3264932898%_))))
                                              (if (gx#stx-null?
                                                   _%tl3265132905%_)
                                                  (_%__kont3827638277%_
                                                   _%hd3265032902%_)
                                                  (_%__kont3828438285%_))))
                                          (_%__kont3828438285%_))
                                      (if (equal? _%e3259733160%_ 'class:)
                                          (if (gx#stx-pair? _%tl3264032948%_)
                                              (let ((_%e3266032841%_
                                                     (gx#syntax-e
                                                      _%tl3264032948%_)))
                                                (let ((_%tl3266232848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3266032841%_)))
                                                      (_%hd3266132845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3266032841%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3266232848%_)
                                                      (_%__kont3827838279%_
                                                       _%hd3266132845%_)
                                                      (_%__kont3828438285%_))))
                                              (_%__kont3828438285%_))
                                          (if (equal? _%e3259733160%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3264032948%_)
                                                  (let ((_%e3267232782%_
                                                         (gx#syntax-e
                                                          _%tl3264032948%_)))
                                                    (let ((_%tl3267432789%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3267232782%_)))
                                                          (_%hd3267332786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3267232782%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3267432789%_)
                                                          (_%__kont3828038281%_
                                                           _%hd3267332786%_
                                                           _%hd3263932945%_)
                                                          (_%__kont3828438285%_))))
                                                  (_%__kont3828438285%_))
                                              (_%__kont3828438285%_)))))))
                          (_%__kont3828438285%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3259233202%_)
                                                (let ((_%e3263832941%_
                                                       (gx#syntax-e
                                                        _%tl3259233202%_)))
                                                  (let ((_%tl3264032948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3263832941%_)))
                                                        (_%hd3263932945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3263832941%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3264032948%_)
                                                        (_%__match3841638417%_
                                                         _%e3259033195%_
                                                         _%hd3259133199%_
                                                         _%tl3259233202%_
                                                         _%e3263832941%_
                                                         _%hd3263932945%_
                                                         _%tl3264032948%_)
                                                        (_%__kont3828438285%_))))
                                                (_%__kont3828438285%_))))))))
                          (if (gx#stx-pair? _%__stx3825938260%_)
                              (let ((_%e3258133294%_
                                     (gx#syntax-e _%__stx3825938260%_)))
                                (let ((_%tl3258333301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3258133294%_)))
                                      (_%hd3258233298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3258133294%_))))
                                  (if (gx#stx-datum? _%hd3258233298%_)
                                      (let ((_%e3258433304%_
                                             (gx#stx-e _%hd3258233298%_)))
                                        (if (equal? _%e3258433304%_ '?:)
                                            (if (gx#stx-pair? _%tl3258333301%_)
                                                (let ((_%e3258533308%_
                                                       (gx#syntax-e
                                                        _%tl3258333301%_)))
                                                  (let ((_%tl3258733315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3258533308%_)))
                                                        (_%hd3258633312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3258533308%_))))
                                                    (_%__kont3826238263%_
                                                     _%tl3258733315%_)))
                                                (_%__match3831038311%_
                                                 _%e3258133294%_
                                                 _%hd3258233298%_
                                                 _%tl3258333301%_))
                                            (_%__match3831038311%_
                                             _%e3258133294%_
                                             _%hd3258233298%_
                                             _%tl3258333301%_)))
                                      (_%__match3831038311%_
                                       _%e3258133294%_
                                       _%hd3258233298%_
                                       _%tl3258333301%_))))
                              (_%__kont3828438285%_)))))))
                 (_%loop-vector32277%_
                  (lambda (_%body32438%_ _%vars32440%_ _%K32441%_)
                    (let* ((_%__stx3851738518%_ _%body32438%_)
                           (_%g3244432467%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3851738518%_))))
                      (let ((_%__kont3852038521%_
                             (lambda (_%L32544%_)
                               (_%loop-list32278%_
                                _%L32544%_
                                _%vars32440%_
                                _%K32441%_)))
                            (_%__kont3852238523%_
                             (lambda (_%L32498%_)
                               (_%loop32275%_
                                _%L32498%_
                                _%vars32440%_
                                _%K32441%_))))
                        (if (gx#stx-pair? _%__stx3851738518%_)
                            (let ((_%e3244732520%_
                                   (gx#syntax-e _%__stx3851738518%_)))
                              (let ((_%tl3244932527%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3244732520%_)))
                                    (_%hd3244832524%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3244732520%_))))
                                (if (gx#stx-datum? _%hd3244832524%_)
                                    (let ((_%e3245032530%_
                                           (gx#stx-e _%hd3244832524%_)))
                                      (if (equal? _%e3245032530%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3244932527%_)
                                              (let ((_%e3245132534%_
                                                     (gx#syntax-e
                                                      _%tl3244932527%_)))
                                                (let ((_%tl3245332541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3245132534%_)))
                                                      (_%hd3245232538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3245132534%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3245332541%_)
                                                      (_%__kont3852038521%_
                                                       _%hd3245232538%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3244432467%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3244432467%_)))
                                          (if (equal? _%e3245032530%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3244932527%_)
                                                  (let ((_%e3245932488%_
                                                         (gx#syntax-e
                                                          _%tl3244932527%_)))
                                                    (let ((_%tl3246132495%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3245932488%_)))
                                                          (_%hd3246032492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3245932488%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3246132495%_)
                                                          (_%__kont3852238523%_
                                                           _%hd3246032492%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3244432467%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3244432467%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3244432467%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3244432467%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3244432467%_)))))))
                 (_%loop-list32278%_
                  (lambda (_%rest32368%_ _%vars32370%_ _%K32371%_)
                    (let* ((_%__stx3856738568%_ _%rest32368%_)
                           (_%g3237432386%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3856738568%_))))
                      (let ((_%__kont3857038571%_
                             (lambda (_%L32414%_ _%L32416%_)
                               (_%loop32275%_
                                _%L32416%_
                                _%vars32370%_
                                (lambda (_%g3242832430%_)
                                  (_%loop-list32278%_
                                   _%L32414%_
                                   _%g3242832430%_
                                   _%K32371%_)))))
                            (_%__kont3857238573%_
                             (lambda () (_%K32371%_ _%vars32370%_))))
                        (if (gx#stx-pair? _%__stx3856738568%_)
                            (let ((_%e3237832404%_
                                   (gx#syntax-e _%__stx3856738568%_)))
                              (let ((_%tl3238032411%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3237832404%_)))
                                    (_%hd3237932408%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3237832404%_))))
                                (_%__kont3857038571%_
                                 _%tl3238032411%_
                                 _%hd3237932408%_)))
                            (_%__kont3857238573%_))))))
                 (_%loop-class-list32279%_
                  (lambda (_%rest32281%_ _%vars32283%_ _%K32284%_)
                    (let* ((_%__stx3858338584%_ _%rest32281%_)
                           (_%g3228732302%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3858338584%_))))
                      (let ((_%__kont3858638587%_
                             (lambda (_%L32340%_ _%L32342%_)
                               (_%loop32275%_
                                _%L32342%_
                                _%vars32283%_
                                (lambda (_%g3235832360%_)
                                  (_%loop-class-list32279%_
                                   _%L32340%_
                                   _%g3235832360%_
                                   _%K32284%_)))))
                            (_%__kont3858838589%_
                             (lambda () (_%K32284%_ _%vars32283%_))))
                        (if (gx#stx-pair? _%__stx3858338584%_)
                            (let ((_%e3229132320%_
                                   (gx#syntax-e _%__stx3858338584%_)))
                              (let ((_%tl3229332327%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3229132320%_)))
                                    (_%hd3229232324%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3229132320%_))))
                                (if (gx#stx-pair? _%tl3229332327%_)
                                    (let ((_%e3229432330%_
                                           (gx#syntax-e _%tl3229332327%_)))
                                      (let ((_%tl3229632337%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3229432330%_)))
                                            (_%hd3229532334%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3229432330%_))))
                                        (_%__kont3858638587%_
                                         _%tl3229632337%_
                                         _%hd3229532334%_)))
                                    (_%__kont3858838589%_))))
                            (_%__kont3858838589%_)))))))
          (_%loop32275%_ _%ptree32272%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29198%_ _%tgt29200%_ _%ptree29201%_ _%K29202%_ _%E29203%_)
        (letrec ((_%generate129205%_
                  (lambda (_%tgt30471%_ _%ptree30473%_ _%K30474%_ _%E30475%_)
                    (let* ((_%g3047730485%_
                            (lambda (_%g3047830481%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3047830481%_)))
                           (_%g3047632268%_
                            (lambda (_%g3047830489%_)
                              ((lambda (_%L30492%_)
                                 (let* ((_%__stx3881938820%_ _%ptree30473%_)
                                        (_%g3051930661%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3881938820%_))))
                                   (let ((_%__kont3882238823%_
                                          (lambda (_%L31983%_ _%L31985%_)
                                            (let* ((_%__stx3873738738%_
                                                    _%L31983%_)
                                                   (_%g3200232037%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3873738738%_))))
                                              (let ((_%__kont3874038741%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31985%_ (cons _%L30492%_ '())))
                           (cons _%K30474%_ (cons _%E30475%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3874238743%_
                                                     (lambda (_%L32238%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31985%_ (cons _%L30492%_ '())))
                           (cons (_%generate129205%_
                                  _%tgt30471%_
                                  _%L32238%_
                                  _%K30474%_
                                  _%E30475%_)
                                 (cons _%E30475%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3874438745%_
                                                     (lambda (_%L32176%_)
                                                       (let* ((_%g3219032198%_
                                                               (lambda (_%g3219132194%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3219132194%_)))
                      (_%g3218932217%_
                       (lambda (_%g3219132202%_)
                         ((lambda (_%L32205%_)
                            (cons 'let
                                  (cons (cons (cons _%L32205%_
                                                    (cons (cons _%L31985%_
                                                                (cons _%L30492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%L32205%_
                                                          (cons (_%generate129205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L32205%_
                         _%L32176%_
                         _%K30474%_
                         _%E30475%_)
                        (cons _%E30475%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3219132202%_))))
                 (_%g3218932217%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3874638747%_
                                                     (lambda (_%L32092%_
                                                              _%L32094%_)
                                                       (let* ((_%g3211432122%_
                                                               (lambda (_%g3211532118%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3211532118%_)))
                      (_%g3211332141%_
                       (lambda (_%g3211532126%_)
                         ((lambda (_%L32129%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%L31985%_
                                                    (cons _%L30492%_ '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%L32129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%L32094%_ (cons _%L30492%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129205%_
                         _%L32129%_
                         _%L32092%_
                         _%K30474%_
                         _%E30475%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30475%_ '())))))
                          _%g3211532126%_))))
                 (_%g3211332141%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3199932249%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3873738738%_)
                                                             (let ((_%e3200532228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3873738738%_)))
                       (let ((_%tl3200732235%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3200532228%_)))
                             (_%hd3200632232%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3200532228%_))))
                         (if (gx#stx-null? _%tl3200732235%_)
                             (_%__kont3874238743%_ _%hd3200632232%_)
                             (if (gx#stx-datum? _%hd3200632232%_)
                                 (let ((_%e3201232162%_
                                        (gx#stx-e _%hd3200632232%_)))
                                   (if (equal? _%e3201232162%_ '=>:)
                                       (if (gx#stx-pair? _%tl3200732235%_)
                                           (let ((_%e3201332166%_
                                                  (gx#syntax-e
                                                   _%tl3200732235%_)))
                                             (let ((_%tl3201532173%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3201332166%_)))
                                                   (_%hd3201432170%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3201332166%_))))
                                               (if (gx#stx-null?
                                                    _%tl3201532173%_)
                                                   (_%__kont3874438745%_
                                                    _%hd3201432170%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3200232037%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3200232037%_)))
                                       (if (equal? _%e3201232162%_ '::)
                                           (if (gx#stx-pair? _%tl3200732235%_)
                                               (let ((_%e3202232058%_
                                                      (gx#syntax-e
                                                       _%tl3200732235%_)))
                                                 (let ((_%tl3202432065%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3202232058%_)))
                                                       (_%hd3202332062%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3202232058%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3202432065%_)
                                                       (let ((_%e3202532068%_
                                                              (gx#syntax-e
                                                               _%tl3202432065%_)))
                                                         (let ((_%tl3202732075%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3202532068%_)))
                       (_%hd3202632072%_
                        (let () (declare (not safe)) (##car _%e3202532068%_))))
                   (if (gx#stx-datum? _%hd3202632072%_)
                       (let ((_%e3202832078%_ (gx#stx-e _%hd3202632072%_)))
                         (if (equal? _%e3202832078%_ '=>:)
                             (if (gx#stx-pair? _%tl3202732075%_)
                                 (let ((_%e3202932082%_
                                        (gx#syntax-e _%tl3202732075%_)))
                                   (let ((_%tl3203132089%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3202932082%_)))
                                         (_%hd3203032086%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3202932082%_))))
                                     (if (gx#stx-null? _%tl3203132089%_)
                                         (_%__kont3874638747%_
                                          _%hd3203032086%_
                                          _%hd3202332062%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3200232037%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3200232037%_)))
                             (let () (declare (not safe)) (_%g3200232037%_))))
                       (let () (declare (not safe)) (_%g3200232037%_)))))
               (let () (declare (not safe)) (_%g3200232037%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3200232037%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3200232037%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3200232037%_))))))
                     (let () (declare (not safe)) (_%g3200232037%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3873738738%_)
                                                      (_%__kont3874038741%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3199932249%_))))))))
                                         (_%__kont3882438825%_
                                          (lambda (_%L31880%_)
                                            (let* ((_%__stx3872138722%_
                                                    _%L31880%_)
                                                   (_%g3189331905%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3872138722%_))))
                                              (let ((_%__kont3872438725%_
                                                     (lambda (_%L31933%_
                                                              _%L31935%_)
                                                       (_%generate129205%_
                                                        _%tgt30471%_
                                                        _%L31935%_
                                                        (_%generate129205%_
                                                         _%tgt30471%_
                                                         (cons 'and:
                                                               _%L31933%_)
                                                         _%K30474%_
                                                         _%E30475%_)
                                                        _%E30475%_)))
                                                    (_%__kont3872638727%_
                                                     (lambda () _%K30474%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3872138722%_)
                                                    (let ((_%e3189731923%_
                                                           (gx#syntax-e
                                                            _%__stx3872138722%_)))
                                                      (let ((_%tl3189931930%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3189731923%_)))
                    (_%hd3189831927%_
                     (let () (declare (not safe)) (##car _%e3189731923%_))))
                (_%__kont3872438725%_ _%tl3189931930%_ _%hd3189831927%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3872638727%_))))))
                                         (_%__kont3882638827%_
                                          (lambda (_%L31787%_)
                                            (let* ((_%__stx3870538706%_
                                                    _%L31787%_)
                                                   (_%g3180031812%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3870538706%_))))
                                              (let ((_%__kont3870838709%_
                                                     (lambda (_%L31840%_
                                                              _%L31842%_)
                                                       (_%generate129205%_
                                                        _%tgt30471%_
                                                        _%L31842%_
                                                        _%K30474%_
                                                        (_%generate129205%_
                                                         _%tgt30471%_
                                                         (cons 'or: _%L31840%_)
                                                         _%K30474%_
                                                         _%E30475%_))))
                                                    (_%__kont3871038711%_
                                                     (lambda () _%E30475%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3870538706%_)
                                                    (let ((_%e3180431830%_
                                                           (gx#syntax-e
                                                            _%__stx3870538706%_)))
                                                      (let ((_%tl3180631837%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3180431830%_)))
                    (_%hd3180531834%_
                     (let () (declare (not safe)) (##car _%e3180431830%_))))
                (_%__kont3870838709%_ _%tl3180631837%_ _%hd3180531834%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3871038711%_))))))
                                         (_%__kont3882838829%_
                                          (lambda (_%L31752%_)
                                            (_%generate129205%_
                                             _%tgt30471%_
                                             _%L31752%_
                                             _%E30475%_
                                             _%K30474%_)))
                                         (_%__kont3883038831%_
                                          (lambda (_%L31626%_ _%L31628%_)
                                            (let* ((_%g3164531660%_
                                                    (lambda (_%g3164631656%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3164631656%_)))
                                                   (_%g3164431717%_
                                                    (lambda (_%g3164631664%_)
                                                      (if (gx#stx-pair?
                                                           _%g3164631664%_)
                                                          (let ((_%e3164931667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3164631664%_)))
                    (let ((_%hd3165031671%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3164931667%_)))
                          (_%tl3165131674%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3164931667%_))))
                      (if (gx#stx-pair? _%tl3165131674%_)
                          (let ((_%e3165231677%_
                                 (gx#syntax-e _%tl3165131674%_)))
                            (let ((_%hd3165331681%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3165231677%_)))
                                  (_%tl3165431684%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3165231677%_))))
                              (if (gx#stx-null? _%tl3165431684%_)
                                  ((lambda (_%L31687%_ _%L31689%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%L30492%_ '()))
                                                 (cons (let ((_%hd-pat31705%_
                                                              (gx#stx-e
                                                               _%L31628%_))
                                                             (_%tl-pat31707%_
                                                              (gx#stx-e
                                                               _%L31626%_)))
                                                         (if (and (equal? _%hd-pat31705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31707%_ '(any:)))
                     _%K30474%_
                     (if (equal? _%tl-pat31707%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%L31689%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129205%_
                                            _%L31689%_
                                            _%L31628%_
                                            _%K30474%_
                                            _%E30475%_)
                                           '())))
                         (if (equal? _%hd-pat31705%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%L31687%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L30492%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129205%_
                                                _%L31687%_
                                                _%L31626%_
                                                _%K30474%_
                                                _%E30475%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%L31689%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%L30492%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L31687%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30492%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129205%_
                                                _%L31689%_
                                                _%L31628%_
                                                (_%generate129205%_
                                                 _%L31687%_
                                                 _%L31626%_
                                                 _%K30474%_
                                                 _%E30475%_)
                                                _%E30475%_)
                                               '())))))))
               (cons _%E30475%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3165331681%_
                                   _%hd3165031671%_)
                                  (_%g3164531660%_ _%g3164631664%_))))
                          (_%g3164531660%_ _%g3164631664%_))))
                  (_%g3164531660%_ _%g3164631664%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3164431717%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3883238833%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%L30492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30474%_ (cons _%E30475%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3883438835%_
                                          (lambda (_%L31542%_ _%L31544%_)
                                            (_%generate-splice29207%_
                                             _%tgt30471%_
                                             _%L31544%_
                                             _%L31542%_
                                             _%K30474%_
                                             _%E30475%_)))
                                         (_%__kont3883638837%_
                                          (lambda (_%L31456%_)
                                            (let* ((_%g3147031478%_
                                                    (lambda (_%g3147131474%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3147131474%_)))
                                                   (_%g3146931497%_
                                                    (lambda (_%g3147131482%_)
                                                      ((lambda (_%L31485%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%L30492%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%L31485%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%L30492%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129205%_
                                                      _%L31485%_
                                                      _%L31456%_
                                                      _%K30474%_
                                                      _%E30475%_)
                                                     '())))
                                   (cons _%E30475%_ '())))))
               _%g3147131482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3146931497%_
                                               (gx#genident 'e)))))
                                         (_%__kont3883838839%_
                                          (lambda (_%L31261%_)
                                            (let* ((_%__stx3865538656%_
                                                    _%L31261%_)
                                                   (_%g3127631299%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3865538656%_))))
                                              (let ((_%__kont3865838659%_
                                                     (lambda (_%L31376%_)
                                                       (let* ((_%g3139031398%_
                                                               (lambda (_%g3139131394%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3139131394%_)))
                      (_%g3138931417%_
                       (lambda (_%g3139131402%_)
                         ((lambda (_%L31405%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%L30492%_
                                                                '()))
                                                    (cons _%L31405%_ '())))
                                        (cons (_%generate-simple-vector29208%_
                                               _%tgt30471%_
                                               _%L31376%_
                                               '0
                                               '##values-ref
                                               _%K30474%_
                                               _%E30475%_)
                                              (cons _%E30475%_ '())))))
                          _%g3139131402%_))))
                 (_%g3138931417%_ (gx#stx-length _%L31376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3866038661%_
                                                     (lambda (_%L31330%_)
                                                       (_%generate-list-vector29209%_
                                                        _%tgt30471%_
                                                        _%L31330%_
                                                        'values->list
                                                        _%K30474%_
                                                        _%E30475%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3865538656%_)
                                                    (let ((_%e3127931352%_
                                                           (gx#syntax-e
                                                            _%__stx3865538656%_)))
                                                      (let ((_%tl3128131359%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3127931352%_)))
                    (_%hd3128031356%_
                     (let () (declare (not safe)) (##car _%e3127931352%_))))
                (if (gx#stx-datum? _%hd3128031356%_)
                    (let ((_%e3128231362%_ (gx#stx-e _%hd3128031356%_)))
                      (if (equal? _%e3128231362%_ 'simple:)
                          (if (gx#stx-pair? _%tl3128131359%_)
                              (let ((_%e3128331366%_
                                     (gx#syntax-e _%tl3128131359%_)))
                                (let ((_%tl3128531373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3128331366%_)))
                                      (_%hd3128431370%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3128331366%_))))
                                  (if (gx#stx-null? _%tl3128531373%_)
                                      (_%__kont3865838659%_ _%hd3128431370%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3127631299%_)))))
                              (let () (declare (not safe)) (_%g3127631299%_)))
                          (if (equal? _%e3128231362%_ 'list:)
                              (if (gx#stx-pair? _%tl3128131359%_)
                                  (let ((_%e3129131320%_
                                         (gx#syntax-e _%tl3128131359%_)))
                                    (let ((_%tl3129331327%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3129131320%_)))
                                          (_%hd3129231324%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3129131320%_))))
                                      (if (gx#stx-null? _%tl3129331327%_)
                                          (_%__kont3866038661%_
                                           _%hd3129231324%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3127631299%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3127631299%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3127631299%_)))))
                    (let () (declare (not safe)) (_%g3127631299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3127631299%_)))))))
                                         (_%__kont3884038841%_
                                          (lambda (_%L31066%_)
                                            (let* ((_%__stx3860538606%_
                                                    _%L31066%_)
                                                   (_%g3108131104%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3860538606%_))))
                                              (let ((_%__kont3860838609%_
                                                     (lambda (_%L31181%_)
                                                       (let* ((_%g3119531203%_
                                                               (lambda (_%g3119631199%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3119631199%_)))
                      (_%g3119431222%_
                       (lambda (_%g3119631207%_)
                         ((lambda (_%L31210%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%L30492%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%L30492%_ '()))
                              (cons _%L31210%_ '())))
                  (cons (_%generate-simple-vector29208%_
                         _%tgt30471%_
                         _%L31181%_
                         '0
                         '##vector-ref
                         _%K30474%_
                         _%E30475%_)
                        (cons _%E30475%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30475%_ '())))))
                          _%g3119631207%_))))
                 (_%g3119431222%_ (gx#stx-length _%L31181%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3861038611%_
                                                     (lambda (_%L31135%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%L30492%_ '()))
                           (cons (_%generate-list-vector29209%_
                                  _%tgt30471%_
                                  _%L31135%_
                                  'vector->list
                                  _%K30474%_
                                  _%E30475%_)
                                 (cons _%E30475%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3860538606%_)
                                                    (let ((_%e3108431157%_
                                                           (gx#syntax-e
                                                            _%__stx3860538606%_)))
                                                      (let ((_%tl3108631164%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3108431157%_)))
                    (_%hd3108531161%_
                     (let () (declare (not safe)) (##car _%e3108431157%_))))
                (if (gx#stx-datum? _%hd3108531161%_)
                    (let ((_%e3108731167%_ (gx#stx-e _%hd3108531161%_)))
                      (if (equal? _%e3108731167%_ 'simple:)
                          (if (gx#stx-pair? _%tl3108631164%_)
                              (let ((_%e3108831171%_
                                     (gx#syntax-e _%tl3108631164%_)))
                                (let ((_%tl3109031178%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3108831171%_)))
                                      (_%hd3108931175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3108831171%_))))
                                  (if (gx#stx-null? _%tl3109031178%_)
                                      (_%__kont3860838609%_ _%hd3108931175%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3108131104%_)))))
                              (let () (declare (not safe)) (_%g3108131104%_)))
                          (if (equal? _%e3108731167%_ 'list:)
                              (if (gx#stx-pair? _%tl3108631164%_)
                                  (let ((_%e3109631125%_
                                         (gx#syntax-e _%tl3108631164%_)))
                                    (let ((_%tl3109831132%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3109631125%_)))
                                          (_%hd3109731129%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3109631125%_))))
                                      (if (gx#stx-null? _%tl3109831132%_)
                                          (_%__kont3861038611%_
                                           _%hd3109731129%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3108131104%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3108131104%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3108131104%_)))))
                    (let () (declare (not safe)) (_%g3108131104%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3108131104%_)))))))
                                         (_%__kont3884238843%_
                                          (lambda (_%L31017%_ _%L31019%_)
                                            (_%generate-struct29210%_
                                             (gx#stx-e _%L31019%_)
                                             _%tgt30471%_
                                             _%L31017%_
                                             _%K30474%_
                                             _%E30475%_)))
                                         (_%__kont3884438845%_
                                          (lambda (_%L30958%_ _%L30960%_)
                                            (_%generate-class29213%_
                                             (gx#stx-e _%L30960%_)
                                             _%tgt30471%_
                                             _%L30958%_
                                             _%K30474%_
                                             _%E30475%_)))
                                         (_%__kont3884638847%_
                                          (lambda (_%L30855%_)
                                            (let* ((_%g3086930877%_
                                                    (lambda (_%g3087030873%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3087030873%_)))
                                                   (_%g3086830896%_
                                                    (lambda (_%g3087030881%_)
                                                      ((lambda (_%L30884%_)
                                                         (cons 'if
                                                               (cons (cons _%L30884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%L30492%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L30855%_ '()))
                                               '())))
                             (cons _%K30474%_ (cons _%E30475%_ '())))))
               _%g3087030881%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3086830896%_
                                               (let ((_%e30900%_
                                                      (gx#stx-e _%L30855%_)))
                                                 (if (or (symbol? _%e30900%_)
                                                         (keyword? _%e30900%_)
                                                         (immediate?
                                                          _%e30900%_))
                                                     '##eq?
                                                     (if (number? _%e30900%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3884838849%_
                                          (lambda (_%L30775%_ _%L30777%_)
                                            (let* ((_%g3079330801%_
                                                    (lambda (_%g3079430797%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3079430797%_)))
                                                   (_%g3079230820%_
                                                    (lambda (_%g3079430805%_)
                                                      ((lambda (_%L30808%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%L30808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%L30777%_
                                                     (cons _%L30492%_ '()))
                                               '()))
                                   '())
                             (cons (_%generate129205%_
                                    _%L30808%_
                                    _%L30775%_
                                    _%K30474%_
                                    _%E30475%_)
                                   '()))))
               _%g3079430805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3079230820%_
                                               (gx#genident 'e)))))
                                         (_%__kont3885038851%_
                                          (lambda (_%L30717%_)
                                            (cons 'let
                                                  (cons (cons (cons _%L30717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30492%_ '()))
                      '())
                (cons _%K30474%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3885238853%_
                                          (lambda () _%K30474%_)))
                                     (if (gx#stx-pair? _%__stx3881938820%_)
                                         (let ((_%e3052331959%_
                                                (gx#syntax-e
                                                 _%__stx3881938820%_)))
                                           (let ((_%tl3052531966%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3052331959%_)))
                                                 (_%hd3052431963%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3052331959%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3052431963%_)
                                                 (let ((_%e3052631969%_
                                                        (gx#stx-e
                                                         _%hd3052431963%_)))
                                                   (if (equal? _%e3052631969%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3052531966%_)
                                                           (let ((_%e3052731973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3052531966%_)))
                     (let ((_%tl3052931980%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3052731973%_)))
                           (_%hd3052831977%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3052731973%_))))
                       (_%__kont3882238823%_
                        _%tl3052931980%_
                        _%hd3052831977%_)))
                   (let () (declare (not safe)) (_%g3051930661%_)))
               (if (equal? _%e3052631969%_ 'and:)
                   (_%__kont3882438825%_ _%tl3052531966%_)
                   (if (equal? _%e3052631969%_ 'or:)
                       (_%__kont3882638827%_ _%tl3052531966%_)
                       (if (equal? _%e3052631969%_ 'not:)
                           (if (gx#stx-pair? _%tl3052531966%_)
                               (let ((_%e3054531742%_
                                      (gx#syntax-e _%tl3052531966%_)))
                                 (let ((_%tl3054731749%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3054531742%_)))
                                       (_%hd3054631746%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3054531742%_))))
                                   (if (gx#stx-null? _%tl3054731749%_)
                                       (_%__kont3882838829%_ _%hd3054631746%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3051930661%_)))))
                               (let () (declare (not safe)) (_%g3051930661%_)))
                           (if (equal? _%e3052631969%_ 'cons:)
                               (if (gx#stx-pair? _%tl3052531966%_)
                                   (let ((_%e3055431606%_
                                          (gx#syntax-e _%tl3052531966%_)))
                                     (let ((_%tl3055631613%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3055431606%_)))
                                           (_%hd3055531610%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3055431606%_))))
                                       (if (gx#stx-pair? _%tl3055631613%_)
                                           (let ((_%e3055731616%_
                                                  (gx#syntax-e
                                                   _%tl3055631613%_)))
                                             (let ((_%tl3055931623%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3055731616%_)))
                                                   (_%hd3055831620%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3055731616%_))))
                                               (if (gx#stx-null?
                                                    _%tl3055931623%_)
                                                   (_%__kont3883038831%_
                                                    _%hd3055831620%_
                                                    _%hd3055531610%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3051930661%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3051930661%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3051930661%_)))
                               (if (equal? _%e3052631969%_ 'null:)
                                   (if (gx#stx-null? _%tl3052531966%_)
                                       (_%__kont3883238833%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3051930661%_)))
                                   (if (equal? _%e3052631969%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3052531966%_)
                                           (let ((_%e3057031522%_
                                                  (gx#syntax-e
                                                   _%tl3052531966%_)))
                                             (let ((_%tl3057231529%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3057031522%_)))
                                                   (_%hd3057131526%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3057031522%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3057231529%_)
                                                   (let ((_%e3057331532%_
                                                          (gx#syntax-e
                                                           _%tl3057231529%_)))
                                                     (let ((_%tl3057531539%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3057331532%_)))
                                                           (_%hd3057431536%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3057331532%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3057531539%_)
                                                           (_%__kont3883438835%_
                                                            _%hd3057431536%_
                                                            _%hd3057131526%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3051930661%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3051930661%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3051930661%_)))
                                       (if (equal? _%e3052631969%_ 'box:)
                                           (if (gx#stx-pair? _%tl3052531966%_)
                                               (let ((_%e3058131446%_
                                                      (gx#syntax-e
                                                       _%tl3052531966%_)))
                                                 (let ((_%tl3058331453%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3058131446%_)))
                                                       (_%hd3058231450%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3058131446%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3058331453%_)
                                                       (_%__kont3883638837%_
                                                        _%hd3058231450%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3051930661%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3051930661%_)))
                                           (if (equal? _%e3052631969%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3052531966%_)
                                                   (let ((_%e3058931251%_
                                                          (gx#syntax-e
                                                           _%tl3052531966%_)))
                                                     (let ((_%tl3059131258%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3058931251%_)))
                                                           (_%hd3059031255%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3058931251%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3059131258%_)
                                                           (_%__kont3883838839%_
                                                            _%hd3059031255%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3051930661%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3051930661%_)))
                                               (if (equal? _%e3052631969%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3052531966%_)
                                                       (let ((_%e3059731056%_
                                                              (gx#syntax-e
                                                               _%tl3052531966%_)))
                                                         (let ((_%tl3059931063%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3059731056%_)))
                       (_%hd3059831060%_
                        (let () (declare (not safe)) (##car _%e3059731056%_))))
                   (if (gx#stx-null? _%tl3059931063%_)
                       (_%__kont3884038841%_ _%hd3059831060%_)
                       (let () (declare (not safe)) (_%g3051930661%_)))))
               (let () (declare (not safe)) (_%g3051930661%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3052631969%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3052531966%_)
                                                           (let ((_%e3060630997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3052531966%_)))
                     (let ((_%tl3060831004%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3060630997%_)))
                           (_%hd3060731001%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3060630997%_))))
                       (if (gx#stx-pair? _%tl3060831004%_)
                           (let ((_%e3060931007%_
                                  (gx#syntax-e _%tl3060831004%_)))
                             (let ((_%tl3061131014%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3060931007%_)))
                                   (_%hd3061031011%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3060931007%_))))
                               (if (gx#stx-null? _%tl3061131014%_)
                                   (_%__kont3884238843%_
                                    _%hd3061031011%_
                                    _%hd3060731001%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3051930661%_)))))
                           (let () (declare (not safe)) (_%g3051930661%_)))))
                   (let () (declare (not safe)) (_%g3051930661%_)))
               (if (equal? _%e3052631969%_ 'class:)
                   (if (gx#stx-pair? _%tl3052531966%_)
                       (let ((_%e3061830938%_ (gx#syntax-e _%tl3052531966%_)))
                         (let ((_%tl3062030945%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3061830938%_)))
                               (_%hd3061930942%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3061830938%_))))
                           (if (gx#stx-pair? _%tl3062030945%_)
                               (let ((_%e3062130948%_
                                      (gx#syntax-e _%tl3062030945%_)))
                                 (let ((_%tl3062330955%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3062130948%_)))
                                       (_%hd3062230952%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3062130948%_))))
                                   (if (gx#stx-null? _%tl3062330955%_)
                                       (_%__kont3884438845%_
                                        _%hd3062230952%_
                                        _%hd3061930942%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3051930661%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3051930661%_)))))
                       (let () (declare (not safe)) (_%g3051930661%_)))
                   (if (equal? _%e3052631969%_ 'datum:)
                       (if (gx#stx-pair? _%tl3052531966%_)
                           (let ((_%e3062930845%_
                                  (gx#syntax-e _%tl3052531966%_)))
                             (let ((_%tl3063130852%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3062930845%_)))
                                   (_%hd3063030849%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3062930845%_))))
                               (if (gx#stx-null? _%tl3063130852%_)
                                   (_%__kont3884638847%_ _%hd3063030849%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3051930661%_)))))
                           (let () (declare (not safe)) (_%g3051930661%_)))
                       (if (equal? _%e3052631969%_ 'apply:)
                           (if (gx#stx-pair? _%tl3052531966%_)
                               (let ((_%e3063830755%_
                                      (gx#syntax-e _%tl3052531966%_)))
                                 (let ((_%tl3064030762%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3063830755%_)))
                                       (_%hd3063930759%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3063830755%_))))
                                   (if (gx#stx-pair? _%tl3064030762%_)
                                       (let ((_%e3064130765%_
                                              (gx#syntax-e _%tl3064030762%_)))
                                         (let ((_%tl3064330772%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3064130765%_)))
                                               (_%hd3064230769%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3064130765%_))))
                                           (if (gx#stx-null? _%tl3064330772%_)
                                               (_%__kont3884838849%_
                                                _%hd3064230769%_
                                                _%hd3063930759%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3051930661%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3051930661%_)))))
                               (let () (declare (not safe)) (_%g3051930661%_)))
                           (if (equal? _%e3052631969%_ 'var:)
                               (if (gx#stx-pair? _%tl3052531966%_)
                                   (let ((_%e3064930707%_
                                          (gx#syntax-e _%tl3052531966%_)))
                                     (let ((_%tl3065130714%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3064930707%_)))
                                           (_%hd3065030711%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3064930707%_))))
                                       (if (gx#stx-null? _%tl3065130714%_)
                                           (_%__kont3885038851%_
                                            _%hd3065030711%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3051930661%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3051930661%_)))
                               (if (equal? _%e3052631969%_ 'any:)
                                   (if (gx#stx-null? _%tl3052531966%_)
                                       (_%__kont3885238853%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3051930661%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3051930661%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3051930661%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3051930661%_))))))
                               _%g3047830489%_))))
                      (_%g3047632268%_ _%tgt30471%_))))
                 (_%generate-splice29207%_
                  (lambda (_%tgt29843%_
                           _%hd29845%_
                           _%rest29846%_
                           _%K29847%_
                           _%E29848%_)
                    (let* ((_%g2985029867%_
                            (lambda (_%g2985129863%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2985129863%_)))
                           (_%g2984930467%_
                            (lambda (_%g2985129871%_)
                              (if (gx#stx-pair/null? _%g2985129871%_)
                                  (let ((_g39974_
                                         (gx#syntax-split-splice
                                          _%g2985129871%_
                                          '0)))
                                    (begin
                                      (let ((_g39975_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39974_)
                                                   (##values-length _g39974_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39975_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39975_)))
                                      (let ((_%target2985329874%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39974_ 0)))
                                            (_%tl2985529877%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39974_ 1))))
                                        (if (gx#stx-null? _%tl2985529877%_)
                                            (letrec ((_%loop2985629880%_
                                                      (lambda (_%hd2985429884%_
                                                               _%var2986029887%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2985429884%_)
                                                            (let ((_%e2985729890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2985429884%_)))
                      (let ((_%lp-hd2985829894%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2985729890%_)))
                            (_%lp-tl2985929897%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2985729890%_))))
                        (_%loop2985629880%_
                         _%lp-tl2985929897%_
                         (cons _%lp-hd2985829894%_ _%var2986029887%_))))
                    (let ((_%var2986129900%_ (reverse _%var2986029887%_)))
                      ((lambda (_%L29904%_)
                         (let* ((_%g2992029937%_
                                 (lambda (_%g2992129933%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2992129933%_)))
                                (_%g2991930455%_
                                 (lambda (_%g2992129941%_)
                                   (if (gx#stx-pair/null? _%g2992129941%_)
                                       (let ((_g39976_
                                              (gx#syntax-split-splice
                                               _%g2992129941%_
                                               '0)))
                                         (begin
                                           (let ((_g39977_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39976_)
                                                        (##values-length
                                                         _g39976_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39977_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39977_)))
                                           (let ((_%target2992329944%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g39976_ 0)))
                                                 (_%tl2992529947%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g39976_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2992529947%_)
                                                 (letrec ((_%loop2992629950%_
                                                           (lambda (_%hd2992429954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2993029957%_)
                     (if (gx#stx-pair? _%hd2992429954%_)
                         (let ((_%e2992729960%_
                                (gx#syntax-e _%hd2992429954%_)))
                           (let ((_%lp-hd2992829964%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2992729960%_)))
                                 (_%lp-tl2992929967%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2992729960%_))))
                             (_%loop2992629950%_
                              _%lp-tl2992929967%_
                              (cons _%lp-hd2992829964%_ _%var-r2993029957%_))))
                         (let ((_%var-r2993129970%_
                                (reverse _%var-r2993029957%_)))
                           ((lambda (_%L29974%_)
                              (let* ((_%g2999130008%_
                                      (lambda (_%g2999230004%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2999230004%_)))
                                     (_%g2999030443%_
                                      (lambda (_%g2999230012%_)
                                        (if (gx#stx-pair/null? _%g2999230012%_)
                                            (let ((_g39978_
                                                   (gx#syntax-split-splice
                                                    _%g2999230012%_
                                                    '0)))
                                              (begin
                                                (let ((_g39979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39978_)
                                                             (##values-length
                                                              _g39978_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39979_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2999430015%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39978_
                                                          0)))
                                                      (_%tl2999630018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39978_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2999630018%_)
                                                      (letrec ((_%loop2999730021%_
                                                                (lambda (_%hd2999530025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init3000130028%_)
                          (if (gx#stx-pair? _%hd2999530025%_)
                              (let ((_%e2999830031%_
                                     (gx#syntax-e _%hd2999530025%_)))
                                (let ((_%lp-hd2999930035%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2999830031%_)))
                                      (_%lp-tl3000030038%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2999830031%_))))
                                  (_%loop2999730021%_
                                   _%lp-tl3000030038%_
                                   (cons _%lp-hd2999930035%_
                                         _%init3000130028%_))))
                              (let ((_%init3000230041%_
                                     (reverse _%init3000130028%_)))
                                ((lambda (_%L30045%_)
                                   (let* ((_%g3006230070%_
                                           (lambda (_%g3006330066%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3006330066%_)))
                                          (_%g3006130439%_
                                           (lambda (_%g3006330074%_)
                                             ((lambda (_%L30077%_)
                                                (let* ((_%g3009030098%_
                                                        (lambda (_%g3009130094%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3009130094%_)))
                                                       (_%g3008930435%_
                                                        (lambda (_%g3009130102%_)
                                                          ((lambda (_%L30105%_)
                                                             (let* ((_%g3011830126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3011930122%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3011930122%_)))
                            (_%g3011730431%_
                             (lambda (_%g3011930130%_)
                               ((lambda (_%L30133%_)
                                  (let* ((_%g3014630154%_
                                          (lambda (_%g3014730150%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3014730150%_)))
                                         (_%g3014530427%_
                                          (lambda (_%g3014730158%_)
                                            ((lambda (_%L30161%_)
                                               (let* ((_%g3017430182%_
                                                       (lambda (_%g3017530178%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3017530178%_)))
                                                      (_%g3017330423%_
                                                       (lambda (_%g3017530186%_)
                                                         ((lambda (_%L30189%_)
                                                            (let* ((_%g3020230210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3020330206%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3020330206%_)))
                           (_%g3020130419%_
                            (lambda (_%g3020330214%_)
                              ((lambda (_%L30217%_)
                                 (let* ((_%g3023030238%_
                                         (lambda (_%g3023130234%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3023130234%_)))
                                        (_%g3022930415%_
                                         (lambda (_%g3023130242%_)
                                           ((lambda (_%L30245%_)
                                              (let* ((_%g3025830266%_
                                                      (lambda (_%g3025930262%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3025930262%_)))
                                                     (_%g3025730400%_
                                                      (lambda (_%g3025930270%_)
                                                        ((lambda (_%L30273%_)
                                                           (let* ((_%g3028630294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3028730290%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3028730290%_)))
                          (_%g3028530388%_
                           (lambda (_%g3028730298%_)
                             ((lambda (_%L30301%_)
                                (let* ((_%g3031430322%_
                                        (lambda (_%g3031530318%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3031530318%_)))
                                       (_%g3031330384%_
                                        (lambda (_%g3031530326%_)
                                          ((lambda (_%L30329%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%L30105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%L30217%_
                                                     (foldr (lambda (_%g3035130354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3035230357%_)
                      (cons _%g3035130354%_ _%g3035230357%_))
                    '()
                    _%L29904%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L30245%_ '())))
                                   '()))
                       (cons (cons _%L30161%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%L30189%_
                                                           (cons _%L30217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3034930360%_ _%g3035030363%_)
                                  (cons _%g3034930360%_ _%g3035030363%_))
                                '()
                                _%L29974%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L30329%_ '())))
                                         '()))
                             (cons (cons _%L30133%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%L30217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3034730366%_ _%g3034830369%_)
                                  (cons _%g3034730366%_ _%g3034830369%_))
                                '()
                                _%L29974%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%L30217%_ '()))
                                     (cons (cons _%L30161%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%L30217%_
                     (foldr (lambda (_%g3034530372%_ _%g3034630375%_)
                              (cons _%g3034530372%_ _%g3034630375%_))
                            '()
                            _%L29974%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L30301%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%L30133%_
                             (cons _%L30077%_
                                   (foldr (lambda (_%g3034330378%_
                                                   _%g3034430381%_)
                                            (cons _%g3034330378%_
                                                  _%g3034430381%_))
                                          '()
                                          _%L30045%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3031530326%_))))
                                  (_%g3031330384%_
                                   (_%generate129205%_
                                    _%L30189%_
                                    _%hd29845%_
                                    _%L30273%_
                                    _%L30301%_))))
                              _%g3028730298%_))))
                     (_%g3028530388%_
                      (cons _%L30105%_
                            (cons _%L30217%_
                                  (foldr (lambda (_%g3039130394%_
                                                  _%g3039230397%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3039130394%_
                                                             '()))
                                                 _%g3039230397%_))
                                         '()
                                         _%L29974%_))))))
                 _%g3025930270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3025730400%_
                                                 (cons _%L30133%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%L30217%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets _%L29974%_ _%L29904%_)
                       (foldr (lambda (_%g3040330407%_
                                       _%g3040430410%_
                                       _%g3040530412%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3040430410%_
                                                  (cons _%g3040330407%_ '())))
                                      _%g3040530412%_))
                              '()
                              _%L29974%_
                              _%L29904%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3023130242%_))))
                                   (_%g3022930415%_
                                    (_%generate129205%_
                                     _%L30217%_
                                     _%rest29846%_
                                     _%K29847%_
                                     _%E29848%_))))
                               _%g3020330214%_))))
                      (_%g3020130419%_ (gx#genident 'rest))))
                  _%g3017530186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3017330423%_
                                                  (gx#genident 'hd))))
                                             _%g3014730158%_))))
                                    (_%g3014530427%_
                                     (gx#genident 'splice-try))))
                                _%g3011930130%_))))
                       (_%g3011730431%_ (gx#genident 'splice-loop))))
                   _%g3009130102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3008930435%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3006330074%_))))
                                     (_%g3006130439%_ _%tgt29843%_)))
                                 _%init3000230041%_))))))
                (_%loop2999730021%_ _%target2999430015%_ '()))
              (_%g2999130008%_ _%g2999230012%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2999130008%_
                                             _%g2999230012%_)))))
                                (_%g2999030443%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3044630449%_
                                                   _%g3044730452%_)
                                            (cons _%g3044630449%_
                                                  _%g3044730452%_))
                                          '()
                                          _%L29904%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2993129970%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2992629950%_
                                                    _%target2992329944%_
                                                    '()))
                                                 (_%g2992029937%_
                                                  _%g2992129941%_)))))
                                       (_%g2992029937%_ _%g2992129941%_)))))
                           (_%g2991930455%_
                            (gx#gentemps
                             (foldr (lambda (_%g3045830461%_ _%g3045930464%_)
                                      (cons _%g3045830461%_ _%g3045930464%_))
                                    '()
                                    _%L29904%_)))))
                       _%var2986129900%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2985629880%_
                                               _%target2985329874%_
                                               '()))
                                            (_%g2985029867%_
                                             _%g2985129871%_)))))
                                  (_%g2985029867%_ _%g2985129871%_)))))
                      (_%g2984930467%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29845%_)))))
                 (_%generate-simple-vector29208%_
                  (lambda (_%tgt29666%_
                           _%body29668%_
                           _%start29669%_
                           _%ref29670%_
                           _%K29671%_
                           _%E29672%_)
                    (let _%recur29674%_ ((_%rest29677%_ _%body29668%_)
                                         (_%off29679%_ _%start29669%_))
                      (let* ((_%__stx3917739178%_ _%rest29677%_)
                             (_%g2968229694%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3917739178%_))))
                        (let ((_%__kont3918039181%_
                               (lambda (_%L29722%_ _%L29724%_)
                                 (let* ((_%g2973929762%_
                                         (lambda (_%g2974029758%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2974029758%_)))
                                        (_%g2973829835%_
                                         (lambda (_%g2974029766%_)
                                           (if (gx#stx-pair? _%g2974029766%_)
                                               (let ((_%e2974529769%_
                                                      (gx#syntax-e
                                                       _%g2974029766%_)))
                                                 (let ((_%hd2974629773%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2974529769%_)))
                                                       (_%tl2974729776%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2974529769%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2974729776%_)
                                                       (let ((_%e2974829779%_
                                                              (gx#syntax-e
                                                               _%tl2974729776%_)))
                                                         (let ((_%hd2974929783%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2974829779%_)))
                       (_%tl2975029786%_
                        (let () (declare (not safe)) (##cdr _%e2974829779%_))))
                   (if (gx#stx-pair? _%tl2975029786%_)
                       (let ((_%e2975129789%_ (gx#syntax-e _%tl2975029786%_)))
                         (let ((_%hd2975229793%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2975129789%_)))
                               (_%tl2975329796%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2975129789%_))))
                           (if (gx#stx-pair? _%tl2975329796%_)
                               (let ((_%e2975429799%_
                                      (gx#syntax-e _%tl2975329796%_)))
                                 (let ((_%hd2975529803%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2975429799%_)))
                                       (_%tl2975629806%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2975429799%_))))
                                   (if (gx#stx-null? _%tl2975629806%_)
                                       ((lambda (_%L29809%_
                                                 _%L29811%_
                                                 _%L29812%_
                                                 _%L29813%_)
                                          (cons 'let
                                                (cons (cons (cons _%L29813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%L29809%_
                                      (cons _%L29812%_ (cons _%L29811%_ '())))
                                '()))
                    '())
              (cons (_%generate129205%_
                     _%L29813%_
                     _%L29724%_
                     (_%recur29674%_ _%L29722%_ (fx1+ _%off29679%_))
                     _%E29672%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd2975529803%_
                                        _%hd2975229793%_
                                        _%hd2974929783%_
                                        _%hd2974629773%_)
                                       (_%g2973929762%_ _%g2974029766%_))))
                               (_%g2973929762%_ _%g2974029766%_))))
                       (_%g2973929762%_ _%g2974029766%_))))
               (_%g2973929762%_ _%g2974029766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2973929762%_
                                                _%g2974029766%_)))))
                                   (_%g2973829835%_
                                    (list (gx#genident 'e)
                                          _%tgt29666%_
                                          _%off29679%_
                                          _%ref29670%_)))))
                              (_%__kont3918239183%_ (lambda () _%K29671%_)))
                          (if (gx#stx-pair? _%__stx3917739178%_)
                              (let ((_%e2968629712%_
                                     (gx#syntax-e _%__stx3917739178%_)))
                                (let ((_%tl2968829719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2968629712%_)))
                                      (_%hd2968729716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2968629712%_))))
                                  (_%__kont3918039181%_
                                   _%tl2968829719%_
                                   _%hd2968729716%_)))
                              (_%__kont3918239183%_)))))))
                 (_%generate-list-vector29209%_
                  (lambda (_%tgt29558%_
                           _%body29560%_
                           _%->list29561%_
                           _%K29562%_
                           _%E29563%_)
                    (let* ((_%g2956529573%_
                            (lambda (_%g2956629569%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2956629569%_)))
                           (_%g2956429662%_
                            (lambda (_%g2956629577%_)
                              ((lambda (_%L29580%_)
                                 (let* ((_%g2959229600%_
                                         (lambda (_%g2959329596%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2959329596%_)))
                                        (_%g2959129658%_
                                         (lambda (_%g2959329604%_)
                                           ((lambda (_%L29607%_)
                                              (let* ((_%g2962029628%_
                                                      (lambda (_%g2962129624%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2962129624%_)))
                                                     (_%g2961929650%_
                                                      (lambda (_%g2962129632%_)
                                                        ((lambda (_%L29635%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%L29580%_ (cons _%L29635%_ '()))
                                     '())
                               (cons (_%generate129205%_
                                      _%L29580%_
                                      _%body29560%_
                                      _%K29562%_
                                      _%E29563%_)
                                     '()))))
                 _%g2962129632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2961929650%_
                                                 (let ((_%$e29654%_
                                                        _%->list29561%_))
                                                   (if (eq? 'values->list
                                                            _%$e29654%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%L29607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29654%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%L29607%_ '()))
                   (if (eq? 'struct->list _%$e29654%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%L29607%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29198%_
                        _%->list29561%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2959329604%_))))
                                   (_%g2959129658%_ _%tgt29558%_)))
                               _%g2956629577%_))))
                      (_%g2956429662%_ (gx#genident 'e)))))
                 (_%generate-struct29210%_
                  (lambda (_%info29429%_
                           _%tgt29431%_
                           _%body29432%_
                           _%K29433%_
                           _%E29434%_)
                    (let* ((_%__stx3919339194%_ _%body29432%_)
                           (_%g2943729460%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3919339194%_))))
                      (let ((_%__kont3919639197%_
                             (lambda (_%L29537%_)
                               (let ((_%fields29551%_
                                      (_%struct-field-accessors29212%_
                                       _%info29429%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39947
                                                          _%info29429%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39947
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39947
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39947
                                                          'predicate)))
                                                   (cons _%tgt29431%_ '()))
                                             (cons (_%generate-simple-struct-body29211%_
                                                    _%info29429%_
                                                    _%tgt29431%_
                                                    _%L29537%_
                                                    _%K29433%_
                                                    _%E29434%_)
                                                   (cons _%E29434%_ '())))))))
                            (_%__kont3919839199%_
                             (lambda (_%L29491%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39948
                                                        _%info29429%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39948
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39948
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39948
                                                        'predicate)))
                                                 (cons _%tgt29431%_ '()))
                                           (cons (_%generate-list-vector29209%_
                                                  _%tgt29431%_
                                                  _%L29491%_
                                                  'struct->list
                                                  _%K29433%_
                                                  _%E29434%_)
                                                 (cons _%E29434%_ '())))))))
                        (if (gx#stx-pair? _%__stx3919339194%_)
                            (let ((_%e2944029513%_
                                   (gx#syntax-e _%__stx3919339194%_)))
                              (let ((_%tl2944229520%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2944029513%_)))
                                    (_%hd2944129517%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2944029513%_))))
                                (if (gx#stx-datum? _%hd2944129517%_)
                                    (let ((_%e2944329523%_
                                           (gx#stx-e _%hd2944129517%_)))
                                      (if (equal? _%e2944329523%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2944229520%_)
                                              (let ((_%e2944429527%_
                                                     (gx#syntax-e
                                                      _%tl2944229520%_)))
                                                (let ((_%tl2944629534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2944429527%_)))
                                                      (_%hd2944529531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2944429527%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2944629534%_)
                                                      (_%__kont3919639197%_
                                                       _%hd2944529531%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2943729460%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2943729460%_)))
                                          (if (equal? _%e2944329523%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2944229520%_)
                                                  (let ((_%e2945229481%_
                                                         (gx#syntax-e
                                                          _%tl2944229520%_)))
                                                    (let ((_%tl2945429488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2945229481%_)))
                                                          (_%hd2945329485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2945229481%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2945429488%_)
                                                          (_%__kont3919839199%_
                                                           _%hd2945329485%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2943729460%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2943729460%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2943729460%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2943729460%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2943729460%_)))))))
                 (_%generate-simple-struct-body29211%_
                  (lambda (_%info29349%_
                           _%tgt29351%_
                           _%body29352%_
                           _%K29353%_
                           _%E29354%_)
                    (let _%recur29356%_ ((_%rest29359%_ _%body29352%_)
                                         (_%fields29361%_
                                          (_%struct-field-accessors29212%_
                                           _%info29349%_)))
                      (let* ((_%__stx3924339244%_ _%rest29359%_)
                             (_%g2936429376%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3924339244%_))))
                        (let ((_%__kont3924639247%_
                               (lambda (_%L29404%_ _%L29406%_)
                                 (if (null? _%fields29361%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29198%_
                                      _%info29349%_
                                      (let ((__obj39949 _%info29349%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39949
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39949
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39949
                                             'name))))
                                     (let ((_%$tgt29421%_ (gx#genident 'e))
                                           (_%getf29423%_
                                            (car _%fields29361%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29421%_
                                                               (cons (cons _%getf29423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29351%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129205%_
                                                          _%$tgt29421%_
                                                          _%L29406%_
                                                          (_%recur29356%_
                                                           _%L29404%_
                                                           (cdr _%fields29361%_))
                                                          _%E29354%_)
                                                         '())))))))
                              (_%__kont3924839249%_ (lambda () _%K29353%_)))
                          (if (gx#stx-pair? _%__stx3924339244%_)
                              (let ((_%e2936829394%_
                                     (gx#syntax-e _%__stx3924339244%_)))
                                (let ((_%tl2937029401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2936829394%_)))
                                      (_%hd2936929398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2936829394%_))))
                                  (_%__kont3924639247%_
                                   _%tl2937029401%_
                                   _%hd2936929398%_)))
                              (_%__kont3924839249%_)))))))
                 (_%struct-field-accessors29212%_
                  (lambda (_%info29330%_)
                    (let _%recur29333%_ ((_%next29336%_
                                          (cons _%info29330%_ '())))
                      (if (null? _%next29336%_)
                          '()
                          (let ((_%ti29339%_ (car _%next29336%_)))
                            (let ((__tmp39981
                                   (_%recur29333%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39950 _%ti29339%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39950
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39950
                                                  '3
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39950
                                                'super))))))
                                  (__tmp39980
                                   (map (lambda (_%slot29342%_)
                                          (let ((_%$e29345%_
                                                 (agetq _%slot29342%_
                                                        (let ((__obj39951
                                                               _%ti29339%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39951
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39951 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39951
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29345%_
                                                _%$e29345%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29198%_
                                                 _%info29330%_
                                                 _%slot29342%_))))
                                        (let ((__obj39952 _%ti29339%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39952
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39952
                                                 '4
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39952
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39981 __tmp39980)))))))
                 (_%generate-class29213%_
                  (lambda (_%info29323%_
                           _%tgt29325%_
                           _%body29326%_
                           _%K29327%_
                           _%E29328%_)
                    (cons 'if
                          (cons (cons (let ((__obj39953 _%info29323%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39953
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39953
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39953
                                             'predicate)))
                                      (cons _%tgt29325%_ '()))
                                (cons (_%generate-class-body29214%_
                                       _%info29323%_
                                       _%tgt29325%_
                                       _%body29326%_
                                       _%K29327%_
                                       _%E29328%_)
                                      (cons _%E29328%_ '()))))))
                 (_%generate-class-body29214%_
                  (lambda (_%info29216%_
                           _%tgt29218%_
                           _%body29219%_
                           _%K29220%_
                           _%E29221%_)
                    (let _%recur29223%_ ((_%rest29226%_ _%body29219%_))
                      (let* ((_%__stx3925939260%_ _%rest29226%_)
                             (_%g2923029246%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3925939260%_))))
                        (let ((_%__kont3926239263%_
                               (lambda (_%L29284%_ _%L29286%_ _%L29287%_)
                                 (let ((_%$e29307%_
                                        (agetq (let ((__tmp39982
                                                      (keyword->string
                                                       (gx#stx-e _%L29287%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp39982))
                                               (let ((__obj39954
                                                      _%info29216%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39954
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39954
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39954
                                                      'unchecked-accessors))))))
                                   (if _%$e29307%_
                                       ((lambda (_%getf29311%_)
                                          (let ((_%$tgt29314%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29311%_ (cons _%tgt29218%_ '()))
                                  '()))
                      '())
                (cons (_%generate129205%_
                       _%$tgt29314%_
                       _%L29286%_
                       (_%recur29223%_ _%L29284%_)
                       _%E29221%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29307%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29198%_
                                        _%info29216%_
                                        _%L29287%_)))))
                              (_%__kont3926439265%_ (lambda () _%K29220%_)))
                          (if (gx#stx-pair? _%__stx3925939260%_)
                              (let ((_%e2923529264%_
                                     (gx#syntax-e _%__stx3925939260%_)))
                                (let ((_%tl2923729271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2923529264%_)))
                                      (_%hd2923629268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2923529264%_))))
                                  (if (gx#stx-pair? _%tl2923729271%_)
                                      (let ((_%e2923829274%_
                                             (gx#syntax-e _%tl2923729271%_)))
                                        (let ((_%tl2924029281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2923829274%_)))
                                              (_%hd2923929278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2923829274%_))))
                                          (_%__kont3926239263%_
                                           _%tl2924029281%_
                                           _%hd2923929278%_
                                           _%hd2923629268%_)))
                                      (_%__kont3926439265%_))))
                              (_%__kont3926439265%_))))))))
          (_%generate129205%_
           _%tgt29200%_
           _%ptree29201%_
           _%K29202%_
           _%E29203%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28011%_ _%tgt-lst28013%_ _%clauses28014%_)
        (letrec ((_%parse-body28016%_
                  (lambda (_%hd-len29020%_)
                    (let _%lp29023%_ ((_%rest29026%_ _%clauses28014%_)
                                      (_%r29028%_ '()))
                      (let* ((_%__stx3930939310%_ _%rest29026%_)
                             (_%g2903129043%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3930939310%_))))
                        (let ((_%__kont3931239313%_
                               (lambda (_%L29071%_ _%L29073%_)
                                 (let* ((_%__stx3928139282%_ _%L29073%_)
                                        (_%g2909029106%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3928139282%_))))
                                   (let ((_%__kont3928439285%_
                                          (lambda (_%L29175%_)
                                            (if (gx#stx-null? _%L29071%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L29175%_)
                                 (let ((_%$e29186%_
                                        (gx#stx-source _%L29073%_)))
                                   (if _%$e29186%_
                                       _%$e29186%_
                                       (gx#stx-source _%stx28011%_))))
                                '())))
              _%r29028%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28011%_
                                                 _%L29073%_))))
                                         (_%__kont3928639287%_
                                          (lambda (_%L29134%_ _%L29136%_)
                                            (_%lp29023%_
                                             _%L29071%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2914829150%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2914829150%_
                           _%stx28011%_))
                        _%L29136%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _%L29134%_)
                              (let ((_%$e29154%_ (gx#stx-source _%L29073%_)))
                                (if _%$e29154%_
                                    _%$e29154%_
                                    (gx#stx-source _%stx28011%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29028%_))))
                                         (_%__kont3928839289%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28011%_
                                             _%L29073%_))))
                                     (let* ((_%__match3930639307%_
                                             (lambda (_%e2909829124%_
                                                      _%hd2909929128%_
                                                      _%tl2910029131%_)
                                               (let ((_%L29134%_
                                                      _%tl2910029131%_)
                                                     (_%L29136%_
                                                      _%hd2909929128%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29136%_)
                                                          (fx= (gx#stx-length
                                                                _%L29136%_)
                                                               _%hd-len29020%_)
                                                          (gx#stx-list?
                                                           _%L29134%_)
                                                          (not (gx#stx-null?
                                                                _%L29134%_)))
                                                     (_%__kont3928639287%_
                                                      _%L29134%_
                                                      _%L29136%_)
                                                     (_%__kont3928839289%_)))))
                                            (_%__match3930039301%_
                                             (lambda (_%e2909329165%_
                                                      _%hd2909429169%_
                                                      _%tl2909529172%_)
                                               (let ((_%L29175%_
                                                      _%tl2909529172%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29175%_)
                                                          (not (gx#stx-null?
                                                                _%L29175%_)))
                                                     (_%__kont3928439285%_
                                                      _%L29175%_)
                                                     (_%__match3930639307%_
                                                      _%e2909329165%_
                                                      _%hd2909429169%_
                                                      _%tl2909529172%_))))))
                                       (if (gx#stx-pair? _%__stx3928139282%_)
                                           (let ((_%e2909329165%_
                                                  (gx#syntax-e
                                                   _%__stx3928139282%_)))
                                             (let ((_%tl2909529172%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2909329165%_)))
                                                   (_%hd2909429169%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2909329165%_))))
                                               (if (gx#identifier?
                                                    _%hd2909429169%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39983_|
                                                        _%hd2909429169%_)
                                                       (_%__match3930039301%_
                                                        _%e2909329165%_
                                                        _%hd2909429169%_
                                                        _%tl2909529172%_)
                                                       (_%__match3930639307%_
                                                        _%e2909329165%_
                                                        _%hd2909429169%_
                                                        _%tl2909529172%_))
                                                   (_%__match3930639307%_
                                                    _%e2909329165%_
                                                    _%hd2909429169%_
                                                    _%tl2909529172%_))))
                                           (_%__kont3928839289%_)))))))
                              (_%__kont3931439315%_ (lambda () _%r29028%_)))
                          (if (gx#stx-pair? _%__stx3930939310%_)
                              (let ((_%e2903529061%_
                                     (gx#syntax-e _%__stx3930939310%_)))
                                (let ((_%tl2903729068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2903529061%_)))
                                      (_%hd2903629065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2903529061%_))))
                                  (_%__kont3931239313%_
                                   _%tl2903729068%_
                                   _%hd2903629065%_)))
                              (_%__kont3931439315%_)))))))
                 (_%generate-body28018%_
                  (lambda (_%body28722%_)
                    (let* ((_%g2872528733%_
                            (lambda (_%g2872628729%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2872628729%_)))
                           (_%g2872429016%_
                            (lambda (_%g2872628737%_)
                              ((lambda (_%L28740%_)
                                 (let* ((_%g2875228769%_
                                         (lambda (_%g2875328765%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2875328765%_)))
                                        (_%g2875129012%_
                                         (lambda (_%g2875328773%_)
                                           (if (gx#stx-pair/null?
                                                _%g2875328773%_)
                                               (let ((_g39984_
                                                      (gx#syntax-split-splice
                                                       _%g2875328773%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39985_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39984_)
                        (##values-length _g39984_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39985_ 2)))
                 (error "Context expects 2 values" _g39985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2875528776%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39984_
                                                             0)))
                                                         (_%tl2875728779%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39984_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2875728779%_)
                                                         (letrec ((_%loop2875828782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2875628786%_ _%target2876228789%_)
                             (if (gx#stx-pair? _%hd2875628786%_)
                                 (let ((_%e2875928792%_
                                        (gx#syntax-e _%hd2875628786%_)))
                                   (let ((_%lp-hd2876028796%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2875928792%_)))
                                         (_%lp-tl2876128799%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2875928792%_))))
                                     (_%loop2875828782%_
                                      _%lp-tl2876128799%_
                                      (cons _%lp-hd2876028796%_
                                            _%target2876228789%_))))
                                 (let ((_%target2876328802%_
                                        (reverse _%target2876228789%_)))
                                   ((lambda (_%L28806%_)
                                      (let* ((_%g2882328840%_
                                              (lambda (_%g2882428836%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2882428836%_)))
                                             (_%g2882229008%_
                                              (lambda (_%g2882428844%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2882428844%_)
                                                    (let ((_g39986_
                                                           (gx#syntax-split-splice
                                                            _%g2882428844%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39987_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39986_)
                             (##values-length _g39986_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39987_ 2)))
                      (error "Context expects 2 values" _g39987_)))
                (let ((_%target2882628847%_
                       (let () (declare (not safe)) (##values-ref _g39986_ 0)))
                      (_%tl2882828850%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g39986_ 1))))
                  (if (gx#stx-null? _%tl2882828850%_)
                      (letrec ((_%loop2882928853%_
                                (lambda (_%hd2882728857%_
                                         _%fail-diagnostic2883328860%_)
                                  (if (gx#stx-pair? _%hd2882728857%_)
                                      (let ((_%e2883028863%_
                                             (gx#syntax-e _%hd2882728857%_)))
                                        (let ((_%lp-hd2883128867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2883028863%_)))
                                              (_%lp-tl2883228870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2883028863%_))))
                                          (_%loop2882928853%_
                                           _%lp-tl2883228870%_
                                           (cons _%lp-hd2883128867%_
                                                 _%fail-diagnostic2883328860%_))))
                                      (let ((_%fail-diagnostic2883428873%_
                                             (reverse _%fail-diagnostic2883328860%_)))
                                        ((lambda (_%L28877%_)
                                           (let* ((_%g2889428902%_
                                                   (lambda (_%g2889528898%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2889528898%_)))
                                                  (_%g2889328988%_
                                                   (lambda (_%g2889528906%_)
                                                     ((lambda (_%L28909%_)
                                                        (let* ((_%g2892228930%_
                                                                (lambda (_%g2892328926%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2892328926%_)))
                       (_%g2892128984%_
                        (lambda (_%g2892328934%_)
                          ((lambda (_%L28937%_)
                             (let* ((_%g2895028958%_
                                     (lambda (_%g2895128954%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2895128954%_)))
                                    (_%g2894928980%_
                                     (lambda (_%g2895128962%_)
                                       ((lambda (_%L28965%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%L28965%_ '()))))
                                        _%g2895128962%_))))
                               (_%g2894928980%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%L28740%_
                                                         (cons _%L28909%_ '()))
                                                   '())
                                             (cons _%L28937%_ '())))
                                 (gx#stx-source _%stx28011%_)))))
                           _%g2892328934%_))))
                  (_%g2892128984%_
                   (_%generate-clauses28019%_
                    _%body28722%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%L28740%_ '()) '())))))))
              _%g2889528906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2889328988%_
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
                                     (foldr (lambda (_%g2899128996%_
                                                     _%g2899228999%_)
                                              (cons _%g2899128996%_
                                                    _%g2899228999%_))
                                            (foldr (lambda (_%g2899329002%_
                                                            _%g2899429005%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2899329002%_ '()))
                   _%g2899429005%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%L28877%_)
                                            _%L28806%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28011%_)))))
                                         _%fail-diagnostic2883428873%_))))))
                        (_%loop2882928853%_ _%target2882628847%_ '()))
                      (_%g2882328840%_ _%g2882428844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2882328840%_
                                                     _%g2882428844%_)))))
                                        (_%g2882229008%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses28014%_))))
                                    _%target2876328802%_))))))
                   (_%loop2875828782%_ _%target2875528776%_ '()))
                 (_%g2875228769%_ _%g2875328773%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2875228769%_
                                                _%g2875328773%_)))))
                                   (_%g2875129012%_ _%tgt-lst28013%_)))
                               _%g2872628737%_))))
                      (_%g2872429016%_ (gx#genident 'E)))))
                 (_%generate-clauses28019%_
                  (lambda (_%rest28374%_ _%E28376%_)
                    (let* ((_%__stx3932539326%_ _%rest28374%_)
                           (_%g2838028396%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3932539326%_))))
                      (let ((_%__kont3932839329%_
                             (lambda (_%L28630%_)
                               (let* ((_%g2864128659%_
                                       (lambda (_%g2864228655%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2864228655%_)))
                                      (_%g2864028714%_
                                       (lambda (_%g2864228663%_)
                                         (if (gx#stx-pair? _%g2864228663%_)
                                             (let ((_%e2864528666%_
                                                    (gx#syntax-e
                                                     _%g2864228663%_)))
                                               (let ((_%hd2864628670%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2864528666%_)))
                                                     (_%tl2864728673%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2864528666%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2864728673%_)
                                                     (let ((_%e2864828676%_
                                                            (gx#syntax-e
                                                             _%tl2864728673%_)))
                                                       (let ((_%hd2864928680%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2864828676%_)))
                     (_%tl2865028683%_
                      (let () (declare (not safe)) (##cdr _%e2864828676%_))))
                 (if (gx#stx-pair? _%tl2865028683%_)
                     (let ((_%e2865128686%_ (gx#syntax-e _%tl2865028683%_)))
                       (let ((_%hd2865228690%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2865128686%_)))
                             (_%tl2865328693%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2865128686%_))))
                         (if (gx#stx-null? _%tl2865328693%_)
                             ((lambda (_%L28696%_ _%L28698%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28698%_)
                                                      (_%generate128020%_
                                                       _%L28698%_
                                                       _%L28696%_
                                                       _%E28376%_)
                                                      _%L28696%_)
                                                  '()))))
                              _%hd2865228690%_
                              _%hd2864928680%_)
                             (_%g2864128659%_ _%g2864228663%_))))
                     (_%g2864128659%_ _%g2864228663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2864128659%_
                                                      _%g2864228663%_))))
                                             (_%g2864128659%_
                                              _%g2864228663%_)))))
                                 (_%g2864028714%_ _%L28630%_))))
                            (_%__kont3933039331%_
                             (lambda (_%L28424%_ _%L28426%_)
                               (let* ((_%g2843928458%_
                                       (lambda (_%g2844028454%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2844028454%_)))
                                      (_%g2843828609%_
                                       (lambda (_%g2844028462%_)
                                         (if (gx#stx-pair? _%g2844028462%_)
                                             (let ((_%e2844428465%_
                                                    (gx#syntax-e
                                                     _%g2844028462%_)))
                                               (let ((_%hd2844528469%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2844428465%_)))
                                                     (_%tl2844628472%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2844428465%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2844628472%_)
                                                     (let ((_%e2844728475%_
                                                            (gx#syntax-e
                                                             _%tl2844628472%_)))
                                                       (let ((_%hd2844828479%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2844728475%_)))
                     (_%tl2844928482%_
                      (let () (declare (not safe)) (##cdr _%e2844728475%_))))
                 (if (gx#stx-pair? _%tl2844928482%_)
                     (let ((_%e2845028485%_ (gx#syntax-e _%tl2844928482%_)))
                       (let ((_%hd2845128489%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2845028485%_)))
                             (_%tl2845228492%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2845028485%_))))
                         (if (gx#stx-null? _%tl2845228492%_)
                             ((lambda (_%L28495%_ _%L28497%_ _%L28498%_)
                                (if (gx#stx-e _%L28497%_)
                                    (let* ((_%g2851528530%_
                                            (lambda (_%g2851628526%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2851628526%_)))
                                           (_%g2851428575%_
                                            (lambda (_%g2851628534%_)
                                              (if (gx#stx-pair?
                                                   _%g2851628534%_)
                                                  (let ((_%e2851928537%_
                                                         (gx#syntax-e
                                                          _%g2851628534%_)))
                                                    (let ((_%hd2852028541%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2851928537%_)))
                                                          (_%tl2852128544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2851928537%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2852128544%_)
                                                          (let ((_%e2852228547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2852128544%_)))
                    (let ((_%hd2852328551%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2852228547%_)))
                          (_%tl2852428554%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2852228547%_))))
                      (if (gx#stx-null? _%tl2852428554%_)
                          ((lambda (_%L28557%_ _%L28559%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%L28498%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28559%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L28557%_ '()))))
                           _%hd2852328551%_
                           _%hd2852028541%_)
                          (_%g2851528530%_ _%g2851628534%_))))
                  (_%g2851528530%_ _%g2851628534%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2851528530%_
                                                   _%g2851628534%_)))))
                                      (_%g2851428575%_
                                       (list (_%generate128020%_
                                              _%L28497%_
                                              _%L28495%_
                                              _%E28376%_)
                                             (_%generate-clauses28019%_
                                              _%L28424%_
                                              (cons _%L28498%_ '())))))
                                    (let* ((_%g2857928587%_
                                            (lambda (_%g2858028583%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2858028583%_)))
                                           (_%g2857828605%_
                                            (lambda (_%g2858028591%_)
                                              ((lambda (_%L28594%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L28498%_
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
                             (cons _%L28495%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%L28594%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2858028591%_))))
                                      (_%g2857828605%_
                                       (_%generate-clauses28019%_
                                        _%L28424%_
                                        (cons _%L28498%_ '()))))))
                              _%hd2845128489%_
                              _%hd2844828479%_
                              _%hd2844528469%_)
                             (_%g2843928458%_ _%g2844028462%_))))
                     (_%g2843928458%_ _%g2844028462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2843928458%_
                                                      _%g2844028462%_))))
                                             (_%g2843928458%_
                                              _%g2844028462%_)))))
                                 (_%g2843828609%_ _%L28426%_))))
                            (_%__kont3933239333%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28376%_ '()))))))
                        (if (gx#stx-pair? _%__stx3932539326%_)
                            (let ((_%e2838328620%_
                                   (gx#syntax-e _%__stx3932539326%_)))
                              (let ((_%tl2838528627%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2838328620%_)))
                                    (_%hd2838428624%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2838328620%_))))
                                (if (gx#stx-null? _%tl2838528627%_)
                                    (_%__kont3932839329%_ _%hd2838428624%_)
                                    (_%__kont3933039331%_
                                     _%tl2838528627%_
                                     _%hd2838428624%_))))
                            (_%__kont3933239333%_))))))
                 (_%generate128020%_
                  (lambda (_%clause28022%_ _%body28024%_ _%E28025%_)
                    (let* ((_%g2802728051%_
                            (lambda (_%g2802828047%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2802828047%_)))
                           (_%g2802628370%_
                            (lambda (_%g2802828055%_)
                              (if (gx#stx-pair? _%g2802828055%_)
                                  (let ((_%e2803128058%_
                                         (gx#syntax-e _%g2802828055%_)))
                                    (let ((_%hd2803228062%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2803128058%_)))
                                          (_%tl2803328065%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2803128058%_))))
                                      (if (gx#stx-pair? _%tl2803328065%_)
                                          (let ((_%e2803428068%_
                                                 (gx#syntax-e
                                                  _%tl2803328065%_)))
                                            (let ((_%hd2803528072%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2803428068%_)))
                                                  (_%tl2803628075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2803428068%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2803528072%_)
                                                  (let ((_g39988_
                                                         (gx#syntax-split-splice
                                                          _%hd2803528072%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39989_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39988_)
                           (##values-length _g39988_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39989_ 2)))
                    (error "Context expects 2 values" _g39989_)))
              (let ((_%target2803728078%_
                     (let () (declare (not safe)) (##values-ref _g39988_ 0)))
                    (_%tl2803928081%_
                     (let () (declare (not safe)) (##values-ref _g39988_ 1))))
                (if (gx#stx-null? _%tl2803928081%_)
                    (letrec ((_%loop2804028084%_
                              (lambda (_%hd2803828088%_ _%var2804428091%_)
                                (if (gx#stx-pair? _%hd2803828088%_)
                                    (let ((_%e2804128094%_
                                           (gx#syntax-e _%hd2803828088%_)))
                                      (let ((_%lp-hd2804228098%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2804128094%_)))
                                            (_%lp-tl2804328101%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2804128094%_))))
                                        (_%loop2804028084%_
                                         _%lp-tl2804328101%_
                                         (cons _%lp-hd2804228098%_
                                               _%var2804428091%_))))
                                    (let ((_%var2804528104%_
                                           (reverse _%var2804428091%_)))
                                      (if (gx#stx-null? _%tl2803628075%_)
                                          ((lambda (_%L28108%_ _%L28110%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2813128134%_
                                                                _%g2813228137%_)
                                                         (cons _%g2813128134%_
                                                               _%g2813228137%_))
                                                       '()
                                                       _%L28108%_)
                                                _%stx28011%_)
                                               (let* ((_%g2814028148%_
                                                       (lambda (_%g2814128144%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2814128144%_)))
                                                      (_%g2813928242%_
                                                       (lambda (_%g2814128152%_)
                                                         ((lambda (_%L28155%_)
                                                            (let* ((_%g2816828176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2816928172%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2816928172%_)))
                           (_%g2816728238%_
                            (lambda (_%g2816928180%_)
                              ((lambda (_%L28183%_)
                                 (let* ((_%g2819628204%_
                                         (lambda (_%g2819728200%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2819728200%_)))
                                        (_%g2819528226%_
                                         (lambda (_%g2819728208%_)
                                           ((lambda (_%L28211%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L28110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L28211%_ '()))
                   (cons _%L28155%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28011%_)))
                                            _%g2819728208%_))))
                                   (_%g2819528226%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2822928232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2823028235%_)
                  (cons _%g2822928232%_ _%g2823028235%_))
                '()
                _%L28108%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L28183%_ '())))
                                     (gx#stx-source _%stx28011%_)))))
                               _%g2816928180%_))))
                      (_%g2816728238%_ _%body28024%_)))
                  _%g2814128152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2813928242%_
                                                  (let _%recur28246%_ ((_%rest28249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause28022%_)
                               (_%rest-targets28251%_ _%tgt-lst28013%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3935139352%_
                                                            _%rest28249%_)
                                                           (_%g2825428266%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3935139352%_))))
                                                      (let ((_%__kont3935439355%_
                                                             (lambda (_%L28302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L28304%_)
                       (let* ((_%g2831928331%_
                               (lambda (_%g2832028327%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2832028327%_)))
                              (_%g2831828362%_
                               (lambda (_%g2832028335%_)
                                 (if (gx#stx-pair? _%g2832028335%_)
                                     (let ((_%e2832328338%_
                                            (gx#syntax-e _%g2832028335%_)))
                                       (let ((_%hd2832428342%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2832328338%_)))
                                             (_%tl2832528345%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2832328338%_))))
                                         ((lambda (_%L28348%_ _%L28350%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx28011%_
                                             _%L28350%_
                                             _%L28304%_
                                             (_%recur28246%_
                                              _%L28302%_
                                              _%L28348%_)
                                             _%E28025%_))
                                          _%tl2832528345%_
                                          _%hd2832428342%_)))
                                     (_%g2831928331%_ _%g2832028335%_)))))
                         (_%g2831828362%_ _%rest-targets28251%_))))
                    (_%__kont3935639357%_
                     (lambda ()
                       (cons _%L28110%_
                             (foldr (lambda (_%g2827628279%_ _%g2827728282%_)
                                      (cons _%g2827628279%_ _%g2827728282%_))
                                    '()
                                    _%L28108%_)))))
                (if (gx#stx-pair? _%__stx3935139352%_)
                    (let ((_%e2825828292%_ (gx#syntax-e _%__stx3935139352%_)))
                      (let ((_%tl2826028299%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2825828292%_)))
                            (_%hd2825928296%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2825828292%_))))
                        (_%__kont3935439355%_
                         _%tl2826028299%_
                         _%hd2825928296%_)))
                    (_%__kont3935639357%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2804528104%_
                                           _%hd2803228062%_)
                                          (_%g2802728051%_
                                           _%g2802828055%_)))))))
                      (_%loop2804028084%_ _%target2803728078%_ '()))
                    (_%g2802728051%_ _%g2802828055%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2802728051%_
                                                   _%g2802828055%_))))
                                          (_%g2802728051%_ _%g2802828055%_))))
                                  (_%g2802728051%_ _%g2802828055%_)))))
                      (_%g2802628370%_
                       (list (gx#genident 'K)
                             (let ((__tmp39990
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28022%_)))
                               (declare (not safe))
                               (##apply append __tmp39990))))))))
          (_%generate-body28018%_
           (_%parse-body28016%_ (gx#stx-length _%tgt-lst28013%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27913%_ _%tgt27915%_ _%clauses27916%_)
        (letrec ((_%reclause27918%_
                  (lambda (_%clause27921%_)
                    (let* ((_%__stx3936739368%_ _%clause27921%_)
                           (_%g2792627941%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3936739368%_))))
                      (let ((_%__kont3937039371%_ (lambda () _%clause27921%_))
                            (_%__kont3937239373%_
                             (lambda (_%L27969%_ _%L27971%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L27971%_ '()) _%L27969%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3937439375%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27913%_
                                _%clause27921%_))))
                        (if (gx#stx-pair? _%__stx3936739368%_)
                            (let ((_%e2792827993%_
                                   (gx#syntax-e _%__stx3936739368%_)))
                              (let ((_%tl2793028000%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2792827993%_)))
                                    (_%hd2792927997%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2792827993%_))))
                                (if (gx#identifier? _%hd2792927997%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39991_|
                                         _%hd2792927997%_)
                                        (_%__kont3937039371%_)
                                        (_%__kont3937239373%_
                                         _%tl2793028000%_
                                         _%hd2792927997%_))
                                    (_%__kont3937239373%_
                                     _%tl2793028000%_
                                     _%hd2792927997%_))))
                            (_%__kont3937439375%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27913%_
           (cons _%tgt27915%_ '())
           (gx#stx-map _%reclause27918%_ _%clauses27916%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35268%_)
        (let* ((_%__stx3939539396%_ _%stx35268%_)
               (_%g3527335302%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3939539396%_))))
          (let ((_%__kont3939839399%_
                 (lambda (_%L35542%_)
                   (let* ((_%g3555535563%_
                           (lambda (_%g3555635559%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3555635559%_)))
                          (_%g3555435616%_
                           (lambda (_%g3555635567%_)
                             ((lambda (_%L35570%_)
                                (let* ((_%g3558235590%_
                                        (lambda (_%g3558335586%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3558335586%_)))
                                       (_%g3558135612%_
                                        (lambda (_%g3558335594%_)
                                          ((lambda (_%L35597%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L35570%_ '())
                                                         (cons _%L35597%_
                                                               '()))))
                                           _%g3558335594%_))))
                                  (_%g3558135612%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35570%_ _%L35542%_))
                                    (gx#stx-source _%stx35268%_)))))
                              _%g3555635567%_))))
                     (_%g3555435616%_ (gx#genident 'e)))))
                (_%__kont3940039401%_
                 (lambda (_%L35437%_)
                   (let* ((_%g3545035458%_
                           (lambda (_%g3545135454%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3545135454%_)))
                          (_%g3544935511%_
                           (lambda (_%g3545135462%_)
                             ((lambda (_%L35465%_)
                                (let* ((_%g3547735485%_
                                        (lambda (_%g3547835481%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3547835481%_)))
                                       (_%g3547635507%_
                                        (lambda (_%g3547835489%_)
                                          ((lambda (_%L35492%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%L35465%_
                                                         (cons _%L35492%_
                                                               '()))))
                                           _%g3547835489%_))))
                                  (_%g3547635507%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35465%_ _%L35437%_))
                                    (gx#stx-source _%stx35268%_)))))
                              _%g3545135462%_))))
                     (_%g3544935511%_ (gx#genident 'args)))))
                (_%__kont3940239403%_
                 (lambda (_%L35329%_ _%L35331%_)
                   (let* ((_%g3534535353%_
                           (lambda (_%g3534635349%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3534635349%_)))
                          (_%g3534435406%_
                           (lambda (_%g3534635357%_)
                             ((lambda (_%L35360%_)
                                (let* ((_%g3537235380%_
                                        (lambda (_%g3537335376%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3537335376%_)))
                                       (_%g3537135402%_
                                        (lambda (_%g3537335384%_)
                                          ((lambda (_%L35387%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L35360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L35331%_ '()))
                       '())
                 (cons _%L35387%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3537335384%_))))
                                  (_%g3537135402%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35268%_
                                    _%L35360%_
                                    _%L35329%_))))
                              _%g3534635357%_))))
                     (_%g3534435406%_ (gx#genident _%L35331%_))))))
            (let* ((_%__match3944839449%_
                    (lambda (_%e3529135309%_
                             _%hd3529235313%_
                             _%tl3529335316%_
                             _%e3529435319%_
                             _%hd3529535323%_
                             _%tl3529635326%_)
                      (let ((_%L35329%_ _%tl3529635326%_)
                            (_%L35331%_ _%hd3529535323%_))
                        (if (gx#stx-list? _%L35329%_)
                            (_%__kont3940239403%_ _%L35329%_ _%L35331%_)
                            (let () (declare (not safe)) (_%g3527335302%_))))))
                   (_%__match3943639437%_
                    (lambda (_%e3528335417%_
                             _%hd3528435421%_
                             _%tl3528535424%_
                             _%e3528635427%_
                             _%hd3528735431%_
                             _%tl3528835434%_)
                      (let ((_%L35437%_ _%tl3528835434%_))
                        (if (gx#stx-list? _%L35437%_)
                            (_%__kont3940039401%_ _%L35437%_)
                            (_%__match3944839449%_
                             _%e3528335417%_
                             _%hd3528435421%_
                             _%tl3528535424%_
                             _%e3528635427%_
                             _%hd3528735431%_
                             _%tl3528835434%_)))))
                   (_%__match3942039421%_
                    (lambda (_%e3527635522%_
                             _%hd3527735526%_
                             _%tl3527835529%_
                             _%e3527935532%_
                             _%hd3528035536%_
                             _%tl3528135539%_)
                      (let ((_%L35542%_ _%tl3528135539%_))
                        (if (gx#stx-list? _%L35542%_)
                            (_%__kont3939839399%_ _%L35542%_)
                            (_%__match3944839449%_
                             _%e3527635522%_
                             _%hd3527735526%_
                             _%tl3527835529%_
                             _%e3527935532%_
                             _%hd3528035536%_
                             _%tl3528135539%_))))))
              (if (gx#stx-pair? _%__stx3939539396%_)
                  (let ((_%e3527635522%_ (gx#syntax-e _%__stx3939539396%_)))
                    (let ((_%tl3527835529%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3527635522%_)))
                          (_%hd3527735526%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3527635522%_))))
                      (if (gx#stx-pair? _%tl3527835529%_)
                          (let ((_%e3527935532%_
                                 (gx#syntax-e _%tl3527835529%_)))
                            (let ((_%tl3528135539%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3527935532%_)))
                                  (_%hd3528035536%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3527935532%_))))
                              (if (gx#identifier? _%hd3528035536%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39992_|
                                       _%hd3528035536%_)
                                      (_%__match3942039421%_
                                       _%e3527635522%_
                                       _%hd3527735526%_
                                       _%tl3527835529%_
                                       _%e3527935532%_
                                       _%hd3528035536%_
                                       _%tl3528135539%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39993_|
                                           _%hd3528035536%_)
                                          (_%__match3943639437%_
                                           _%e3527635522%_
                                           _%hd3527735526%_
                                           _%tl3527835529%_
                                           _%e3527935532%_
                                           _%hd3528035536%_
                                           _%tl3528135539%_)
                                          (_%__match3944839449%_
                                           _%e3527635522%_
                                           _%hd3527735526%_
                                           _%tl3527835529%_
                                           _%e3527935532%_
                                           _%hd3528035536%_
                                           _%tl3528135539%_)))
                                  (_%__match3944839449%_
                                   _%e3527635522%_
                                   _%hd3527735526%_
                                   _%tl3527835529%_
                                   _%e3527935532%_
                                   _%hd3528035536%_
                                   _%tl3528135539%_))))
                          (let () (declare (not safe)) (_%g3527335302%_)))))
                  (let () (declare (not safe)) (_%g3527335302%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35624%_)
        (let* ((_%g3562735651%_
                (lambda (_%g3562835647%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3562835647%_)))
               (_%g3562635863%_
                (lambda (_%g3562835655%_)
                  (if (gx#stx-pair? _%g3562835655%_)
                      (let ((_%e3563135658%_ (gx#syntax-e _%g3562835655%_)))
                        (let ((_%hd3563235662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3563135658%_)))
                              (_%tl3563335665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3563135658%_))))
                          (if (gx#stx-pair? _%tl3563335665%_)
                              (let ((_%e3563435668%_
                                     (gx#syntax-e _%tl3563335665%_)))
                                (let ((_%hd3563535672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3563435668%_)))
                                      (_%tl3563635675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3563435668%_))))
                                  (if (gx#stx-pair/null? _%hd3563535672%_)
                                      (let ((_g39994_
                                             (gx#syntax-split-splice
                                              _%hd3563535672%_
                                              '0)))
                                        (begin
                                          (let ((_g39995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39994_)
                                                       (##values-length
                                                        _g39994_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39995_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39995_)))
                                          (let ((_%target3563735678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39994_ 0)))
                                                (_%tl3563935681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39994_ 1))))
                                            (if (gx#stx-null? _%tl3563935681%_)
                                                (letrec ((_%loop3564035684%_
                                                          (lambda (_%hd3563835688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3564435691%_)
                    (if (gx#stx-pair? _%hd3563835688%_)
                        (let ((_%e3564135694%_ (gx#syntax-e _%hd3563835688%_)))
                          (let ((_%lp-hd3564235698%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3564135694%_)))
                                (_%lp-tl3564335701%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3564135694%_))))
                            (_%loop3564035684%_
                             _%lp-tl3564335701%_
                             (cons _%lp-hd3564235698%_ _%e3564435691%_))))
                        (let ((_%e3564535704%_ (reverse _%e3564435691%_)))
                          ((lambda (_%L35708%_ _%L35710%_)
                             (if (gx#stx-list? _%L35708%_)
                                 (let* ((_%g3572835745%_
                                         (lambda (_%g3572935741%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3572935741%_)))
                                        (_%g3572735851%_
                                         (lambda (_%g3572935749%_)
                                           (if (gx#stx-pair/null?
                                                _%g3572935749%_)
                                               (let ((_g39996_
                                                      (gx#syntax-split-splice
                                                       _%g3572935749%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39997_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39996_)
                        (##values-length _g39996_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39997_ 2)))
                 (error "Context expects 2 values" _g39997_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3573135752%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39996_
                                                             0)))
                                                         (_%tl3573335755%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39996_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3573335755%_)
                                                         (letrec ((_%loop3573435758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3573235762%_ _%$e3573835765%_)
                             (if (gx#stx-pair? _%hd3573235762%_)
                                 (let ((_%e3573535768%_
                                        (gx#syntax-e _%hd3573235762%_)))
                                   (let ((_%lp-hd3573635772%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3573535768%_)))
                                         (_%lp-tl3573735775%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3573535768%_))))
                                     (_%loop3573435758%_
                                      _%lp-tl3573735775%_
                                      (cons _%lp-hd3573635772%_
                                            _%$e3573835765%_))))
                                 (let ((_%$e3573935778%_
                                        (reverse _%$e3573835765%_)))
                                   ((lambda (_%L35782%_)
                                      (let* ((_%g3579835806%_
                                              (lambda (_%g3579935802%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3579935802%_)))
                                             (_%g3579735839%_
                                              (lambda (_%g3579935810%_)
                                                ((lambda (_%L35813%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _%L35710%_ _%L35782%_)
                         (foldr (lambda (_%g3582735831%_
                                         _%g3582835834%_
                                         _%g3582935836%_)
                                  (cons (cons _%g3582835834%_
                                              (cons _%g3582735831%_ '()))
                                        _%g3582935836%_))
                                '()
                                _%L35710%_
                                _%L35782%_))
                       (cons _%L35813%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3579935810%_))))
                                        (_%g3579735839%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35624%_
                                          (foldr (lambda (_%g3584235845%_
                                                          _%g3584335848%_)
                                                   (cons _%g3584235845%_
                                                         _%g3584335848%_))
                                                 '()
                                                 _%L35782%_)
                                          _%L35708%_))))
                                    _%$e3573935778%_))))))
                   (_%loop3573435758%_ _%target3573135752%_ '()))
                 (_%g3572835745%_ _%g3572935749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3572835745%_
                                                _%g3572935749%_)))))
                                   (_%g3572735851%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3585435857%_
                                                     _%g3585535860%_)
                                              (cons _%g3585435857%_
                                                    _%g3585535860%_))
                                            '()
                                            _%L35710%_))))
                                 (_%g3562735651%_ _%g3562835655%_)))
                           _%tl3563635675%_
                           _%e3564535704%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3564035684%_
                                                   _%target3563735678%_
                                                   '()))
                                                (_%g3562735651%_
                                                 _%g3562835655%_)))))
                                      (_%g3562735651%_ _%g3562835655%_))))
                              (_%g3562735651%_ _%g3562835655%_))))
                      (_%g3562735651%_ _%g3562835655%_)))))
          (_%g3562635863%_ _%stx35624%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35869%_)
        (let* ((_%__stx3945139452%_ _%$stx35869%_)
               (_%g3587535958%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3945139452%_))))
          (let ((_%__kont3945439455%_
                 (lambda (_%L36288%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3630436307%_ _%g3630536310%_)
                                        (cons _%g3630436307%_ _%g3630536310%_))
                                      '()
                                      _%L36288%_)))))
                (_%__kont3945839459%_
                 (lambda (_%L36196%_ _%L36198%_ _%L36199%_ _%L36200%_)
                   (cons _%L36200%_
                         (cons (cons (cons _%L36199%_ (cons _%L36198%_ '()))
                                     '())
                               (foldr (lambda (_%g3622236225%_ _%g3622336228%_)
                                        (cons _%g3622236225%_ _%g3622336228%_))
                                      '()
                                      _%L36196%_)))))
                (_%__kont3946239463%_
                 (lambda (_%L36069%_ _%L36071%_ _%L36072%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3609836101%_ _%g3609936104%_)
                                        (cons _%g3609836101%_ _%g3609936104%_))
                                      '()
                                      _%L36071%_)
                               (cons (cons (foldr (lambda (_%g3609636107%_
                                                           _%g3609736110%_)
                                                    (cons _%g3609636107%_
                                                          _%g3609736110%_))
                                                  '()
                                                  _%L36072%_)
                                           (foldr (lambda (_%g3609436113%_
                                                           _%g3609536116%_)
                                                    (cons _%g3609436113%_
                                                          _%g3609536116%_))
                                                  '()
                                                  _%L36069%_))
                                     '()))))))
            (let* ((_%__match3954439545%_
                    (lambda (_%e3592135965%_
                             _%hd3592235969%_
                             _%tl3592335972%_
                             _%e3592435975%_
                             _%hd3592535979%_
                             _%tl3592635982%_
                             _%__splice3946439465%_
                             _%target3592735985%_
                             _%tl3592935988%_)
                      (letrec ((_%loop3593035991%_
                                (lambda (_%hd3592835995%_
                                         _%expr3593435998%_
                                         _%hd3593536000%_)
                                  (if (gx#stx-pair? _%hd3592835995%_)
                                      (let ((_%e3593136003%_
                                             (gx#syntax-e _%hd3592835995%_)))
                                        (let ((_%lp-tl3593336010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3593136003%_)))
                                              (_%lp-hd3593236007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3593136003%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3593236007%_)
                                              (let ((_%e3594736013%_
                                                     (gx#syntax-e
                                                      _%lp-hd3593236007%_)))
                                                (let ((_%tl3594936020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3594736013%_)))
                                                      (_%hd3594836017%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3594736013%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3594936020%_)
                                                      (let ((_%e3595036023%_
                                                             (gx#syntax-e
                                                              _%tl3594936020%_)))
                                                        (let ((_%tl3595236030%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3595036023%_)))
                      (_%hd3595136027%_
                       (let () (declare (not safe)) (##car _%e3595036023%_))))
                  (if (gx#stx-null? _%tl3595236030%_)
                      (_%loop3593035991%_
                       _%lp-tl3593336010%_
                       (cons _%hd3595136027%_ _%expr3593435998%_)
                       (cons _%hd3594836017%_ _%hd3593536000%_))
                      (let () (declare (not safe)) (_%g3587535958%_)))))
              (let () (declare (not safe)) (_%g3587535958%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3587535958%_)))))
                                      (let ((_%hd3593736036%_
                                             (reverse _%hd3593536000%_))
                                            (_%expr3593636033%_
                                             (reverse _%expr3593435998%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3592635982%_)
                                            (let ((_%__splice3946639467%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3592635982%_
                                                    '0)))
                                              (let ((_%tl3594036042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3946639467%_
                                                        '1)))
                                                    (_%target3593836039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3946639467%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3594036042%_)
                                                    (letrec ((_%loop3594136045%_
                                                              (lambda (_%hd3593936049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3594536052%_)
                        (if (gx#stx-pair? _%hd3593936049%_)
                            (let ((_%e3594236055%_
                                   (gx#syntax-e _%hd3593936049%_)))
                              (let ((_%lp-tl3594436062%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3594236055%_)))
                                    (_%lp-hd3594336059%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3594236055%_))))
                                (_%loop3594136045%_
                                 _%lp-tl3594436062%_
                                 (cons _%lp-hd3594336059%_
                                       _%body3594536052%_))))
                            (let ((_%body3594636065%_
                                   (reverse _%body3594536052%_)))
                              (_%__kont3946239463%_
                               _%body3594636065%_
                               _%expr3593636033%_
                               _%hd3593736036%_))))))
              (_%loop3594136045%_ _%target3593836039%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3587535958%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3587535958%_))))))))
                        (_%loop3593035991%_ _%target3592735985%_ '() '()))))
                   (_%__match3953639537%_
                    (lambda (_%e3592135965%_
                             _%hd3592235969%_
                             _%tl3592335972%_
                             _%e3592435975%_
                             _%hd3592535979%_
                             _%tl3592635982%_)
                      (if (gx#stx-pair/null? _%hd3592535979%_)
                          (let ((_%__splice3946439465%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3592535979%_
                                  '0)))
                            (let ((_%tl3592935988%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3946439465%_ '1)))
                                  (_%target3592735985%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3946439465%_
                                      '0))))
                              (if (gx#stx-null? _%tl3592935988%_)
                                  (_%__match3954439545%_
                                   _%e3592135965%_
                                   _%hd3592235969%_
                                   _%tl3592335972%_
                                   _%e3592435975%_
                                   _%hd3592535979%_
                                   _%tl3592635982%_
                                   _%__splice3946439465%_
                                   _%target3592735985%_
                                   _%tl3592935988%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3587535958%_)))))
                          (let () (declare (not safe)) (_%g3587535958%_)))))
                   (_%__match3952439525%_
                    (lambda (_%e3589736126%_
                             _%hd3589836130%_
                             _%tl3589936133%_
                             _%e3590036136%_
                             _%hd3590136140%_
                             _%tl3590236143%_
                             _%e3590336146%_
                             _%hd3590436150%_
                             _%tl3590536153%_
                             _%e3590636156%_
                             _%hd3590736160%_
                             _%tl3590836163%_
                             _%__splice3946039461%_
                             _%target3590936166%_
                             _%tl3591136169%_)
                      (letrec ((_%loop3591236172%_
                                (lambda (_%hd3591036176%_ _%body3591636179%_)
                                  (if (gx#stx-pair? _%hd3591036176%_)
                                      (let ((_%e3591336182%_
                                             (gx#syntax-e _%hd3591036176%_)))
                                        (let ((_%lp-tl3591536189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3591336182%_)))
                                              (_%lp-hd3591436186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3591336182%_))))
                                          (_%loop3591236172%_
                                           _%lp-tl3591536189%_
                                           (cons _%lp-hd3591436186%_
                                                 _%body3591636179%_))))
                                      (let ((_%body3591736192%_
                                             (reverse _%body3591636179%_)))
                                        (let ((_%L36196%_ _%body3591736192%_)
                                              (_%L36198%_ _%hd3590736160%_)
                                              (_%L36199%_ _%hd3590436150%_)
                                              (_%L36200%_ _%hd3589836130%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%L36199%_)
                                              (_%__kont3945839459%_
                                               _%L36196%_
                                               _%L36198%_
                                               _%L36199%_
                                               _%L36200%_)
                                              (_%__match3953639537%_
                                               _%e3589736126%_
                                               _%hd3589836130%_
                                               _%tl3589936133%_
                                               _%e3590036136%_
                                               _%hd3590136140%_
                                               _%tl3590236143%_))))))))
                        (_%loop3591236172%_ _%target3590936166%_ '()))))
                   (_%__match3949039491%_
                    (lambda (_%e3587836238%_
                             _%hd3587936242%_
                             _%tl3588036245%_
                             _%e3588136248%_
                             _%hd3588236252%_
                             _%tl3588336255%_
                             _%__splice3945639457%_
                             _%target3588436258%_
                             _%tl3588636261%_)
                      (letrec ((_%loop3588736264%_
                                (lambda (_%hd3588536268%_ _%body3589136271%_)
                                  (if (gx#stx-pair? _%hd3588536268%_)
                                      (let ((_%e3588836274%_
                                             (gx#syntax-e _%hd3588536268%_)))
                                        (let ((_%lp-tl3589036281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3588836274%_)))
                                              (_%lp-hd3588936278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3588836274%_))))
                                          (_%loop3588736264%_
                                           _%lp-tl3589036281%_
                                           (cons _%lp-hd3588936278%_
                                                 _%body3589136271%_))))
                                      (let ((_%body3589236284%_
                                             (reverse _%body3589136271%_)))
                                        (_%__kont3945439455%_
                                         _%body3589236284%_))))))
                        (_%loop3588736264%_ _%target3588436258%_ '())))))
              (if (gx#stx-pair? _%__stx3945139452%_)
                  (let ((_%e3587836238%_ (gx#syntax-e _%__stx3945139452%_)))
                    (let ((_%tl3588036245%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3587836238%_)))
                          (_%hd3587936242%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3587836238%_))))
                      (if (gx#stx-pair? _%tl3588036245%_)
                          (let ((_%e3588136248%_
                                 (gx#syntax-e _%tl3588036245%_)))
                            (let ((_%tl3588336255%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3588136248%_)))
                                  (_%hd3588236252%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3588136248%_))))
                              (if (gx#stx-null? _%hd3588236252%_)
                                  (if (gx#stx-pair/null? _%tl3588336255%_)
                                      (let ((_%__splice3945639457%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3588336255%_
                                              '0)))
                                        (let ((_%tl3588636261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3945639457%_
                                                  '1)))
                                              (_%target3588436258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3945639457%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3588636261%_)
                                              (_%__match3949039491%_
                                               _%e3587836238%_
                                               _%hd3587936242%_
                                               _%tl3588036245%_
                                               _%e3588136248%_
                                               _%hd3588236252%_
                                               _%tl3588336255%_
                                               _%__splice3945639457%_
                                               _%target3588436258%_
                                               _%tl3588636261%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3588236252%_)
                                                  (let ((_%__splice3946439465%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3588236252%_
                                                          '0)))
                                                    (let ((_%tl3592935988%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3946439465%_
                                                              '1)))
                                                          (_%target3592735985%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3946439465%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3592935988%_)
                                                          (_%__match3954439545%_
                                                           _%e3587836238%_
                                                           _%hd3587936242%_
                                                           _%tl3588036245%_
                                                           _%e3588136248%_
                                                           _%hd3588236252%_
                                                           _%tl3588336255%_
                                                           _%__splice3946439465%_
                                                           _%target3592735985%_
                                                           _%tl3592935988%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3587535958%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3587535958%_))))))
                                      (if (gx#stx-pair/null? _%hd3588236252%_)
                                          (let ((_%__splice3946439465%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3588236252%_
                                                  '0)))
                                            (let ((_%tl3592935988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3946439465%_
                                                      '1)))
                                                  (_%target3592735985%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3946439465%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3592935988%_)
                                                  (_%__match3954439545%_
                                                   _%e3587836238%_
                                                   _%hd3587936242%_
                                                   _%tl3588036245%_
                                                   _%e3588136248%_
                                                   _%hd3588236252%_
                                                   _%tl3588336255%_
                                                   _%__splice3946439465%_
                                                   _%target3592735985%_
                                                   _%tl3592935988%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3587535958%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3587535958%_))))
                                  (if (gx#stx-pair? _%hd3588236252%_)
                                      (let ((_%e3590336146%_
                                             (gx#syntax-e _%hd3588236252%_)))
                                        (let ((_%tl3590536153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3590336146%_)))
                                              (_%hd3590436150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3590336146%_))))
                                          (if (gx#stx-pair? _%tl3590536153%_)
                                              (let ((_%e3590636156%_
                                                     (gx#syntax-e
                                                      _%tl3590536153%_)))
                                                (let ((_%tl3590836163%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3590636156%_)))
                                                      (_%hd3590736160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3590636156%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3590836163%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3588336255%_)
                                                          (let ((_%__splice3946039461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3588336255%_ '0)))
                    (let ((_%tl3591136169%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3946039461%_ '1)))
                          (_%target3590936166%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3946039461%_ '0))))
                      (if (gx#stx-null? _%tl3591136169%_)
                          (_%__match3952439525%_
                           _%e3587836238%_
                           _%hd3587936242%_
                           _%tl3588036245%_
                           _%e3588136248%_
                           _%hd3588236252%_
                           _%tl3588336255%_
                           _%e3590336146%_
                           _%hd3590436150%_
                           _%tl3590536153%_
                           _%e3590636156%_
                           _%hd3590736160%_
                           _%tl3590836163%_
                           _%__splice3946039461%_
                           _%target3590936166%_
                           _%tl3591136169%_)
                          (if (gx#stx-pair/null? _%hd3588236252%_)
                              (let ((_%__splice3946439465%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3588236252%_
                                      '0)))
                                (let ((_%tl3592935988%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3946439465%_
                                          '1)))
                                      (_%target3592735985%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3946439465%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3592935988%_)
                                      (_%__match3954439545%_
                                       _%e3587836238%_
                                       _%hd3587936242%_
                                       _%tl3588036245%_
                                       _%e3588136248%_
                                       _%hd3588236252%_
                                       _%tl3588336255%_
                                       _%__splice3946439465%_
                                       _%target3592735985%_
                                       _%tl3592935988%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3587535958%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3587535958%_))))))
                  (if (gx#stx-pair/null? _%hd3588236252%_)
                      (let ((_%__splice3946439465%_
                             (gx#syntax-split-splice->vector
                              _%hd3588236252%_
                              '0)))
                        (let ((_%tl3592935988%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3946439465%_ '1)))
                              (_%target3592735985%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3946439465%_ '0))))
                          (if (gx#stx-null? _%tl3592935988%_)
                              (_%__match3954439545%_
                               _%e3587836238%_
                               _%hd3587936242%_
                               _%tl3588036245%_
                               _%e3588136248%_
                               _%hd3588236252%_
                               _%tl3588336255%_
                               _%__splice3946439465%_
                               _%target3592735985%_
                               _%tl3592935988%_)
                              (let ()
                                (declare (not safe))
                                (_%g3587535958%_)))))
                      (let () (declare (not safe)) (_%g3587535958%_))))
              (if (gx#stx-pair/null? _%hd3588236252%_)
                  (let ((_%__splice3946439465%_
                         (gx#syntax-split-splice->vector _%hd3588236252%_ '0)))
                    (let ((_%tl3592935988%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3946439465%_ '1)))
                          (_%target3592735985%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3946439465%_ '0))))
                      (if (gx#stx-null? _%tl3592935988%_)
                          (_%__match3954439545%_
                           _%e3587836238%_
                           _%hd3587936242%_
                           _%tl3588036245%_
                           _%e3588136248%_
                           _%hd3588236252%_
                           _%tl3588336255%_
                           _%__splice3946439465%_
                           _%target3592735985%_
                           _%tl3592935988%_)
                          (let () (declare (not safe)) (_%g3587535958%_)))))
                  (let () (declare (not safe)) (_%g3587535958%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3588236252%_)
                                                  (let ((_%__splice3946439465%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3588236252%_
                                                          '0)))
                                                    (let ((_%tl3592935988%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3946439465%_
                                                              '1)))
                                                          (_%target3592735985%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3946439465%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3592935988%_)
                                                          (_%__match3954439545%_
                                                           _%e3587836238%_
                                                           _%hd3587936242%_
                                                           _%tl3588036245%_
                                                           _%e3588136248%_
                                                           _%hd3588236252%_
                                                           _%tl3588336255%_
                                                           _%__splice3946439465%_
                                                           _%target3592735985%_
                                                           _%tl3592935988%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3587535958%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3587535958%_))))))
                                      (if (gx#stx-pair/null? _%hd3588236252%_)
                                          (let ((_%__splice3946439465%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3588236252%_
                                                  '0)))
                                            (let ((_%tl3592935988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3946439465%_
                                                      '1)))
                                                  (_%target3592735985%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3946439465%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3592935988%_)
                                                  (_%__match3954439545%_
                                                   _%e3587836238%_
                                                   _%hd3587936242%_
                                                   _%tl3588036245%_
                                                   _%e3588136248%_
                                                   _%hd3588236252%_
                                                   _%tl3588336255%_
                                                   _%__splice3946439465%_
                                                   _%target3592735985%_
                                                   _%tl3592935988%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3587535958%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3587535958%_)))))))
                          (let () (declare (not safe)) (_%g3587535958%_)))))
                  (let () (declare (not safe)) (_%g3587535958%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36321%_)
        (let* ((_%__stx3954739548%_ _%$stx36321%_)
               (_%g3632636378%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3954739548%_))))
          (let ((_%__kont3955039551%_
                 (lambda (_%L36548%_
                          _%L36550%_
                          _%L36551%_
                          _%L36552%_
                          _%L36553%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36552%_ (cons _%L36551%_ '()))
                                     '())
                               (cons (cons _%L36553%_
                                           (cons _%L36550%_
                                                 (foldr (lambda (_%g3657836581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3657936584%_)
                  (cons _%g3657836581%_ _%g3657936584%_))
                '()
                _%L36548%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3955439555%_
                 (lambda (_%L36435%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3645236455%_ _%g3645336458%_)
                                        (cons _%g3645236455%_ _%g3645336458%_))
                                      '()
                                      _%L36435%_))))))
            (let* ((_%__match3962039621%_
                    (lambda (_%e3635836385%_
                             _%hd3635936389%_
                             _%tl3636036392%_
                             _%e3636136395%_
                             _%hd3636236399%_
                             _%tl3636336402%_
                             _%__splice3955639557%_
                             _%target3636436405%_
                             _%tl3636636408%_)
                      (letrec ((_%loop3636736411%_
                                (lambda (_%hd3636536415%_ _%body3637136418%_)
                                  (if (gx#stx-pair? _%hd3636536415%_)
                                      (let ((_%e3636836421%_
                                             (gx#syntax-e _%hd3636536415%_)))
                                        (let ((_%lp-tl3637036428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3636836421%_)))
                                              (_%lp-hd3636936425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3636836421%_))))
                                          (_%loop3636736411%_
                                           _%lp-tl3637036428%_
                                           (cons _%lp-hd3636936425%_
                                                 _%body3637136418%_))))
                                      (let ((_%body3637236431%_
                                             (reverse _%body3637136418%_)))
                                        (_%__kont3955439555%_
                                         _%body3637236431%_))))))
                        (_%loop3636736411%_ _%target3636436405%_ '()))))
                   (_%__match3959839599%_
                    (lambda (_%e3633336468%_
                             _%hd3633436472%_
                             _%tl3633536475%_
                             _%e3633636478%_
                             _%hd3633736482%_
                             _%tl3633836485%_
                             _%e3633936488%_
                             _%hd3634036492%_
                             _%tl3634136495%_
                             _%e3634236498%_
                             _%hd3634336502%_
                             _%tl3634436505%_
                             _%e3634536508%_
                             _%hd3634636512%_
                             _%tl3634736515%_
                             _%__splice3955239553%_
                             _%target3634836518%_
                             _%tl3635036521%_)
                      (letrec ((_%loop3635136524%_
                                (lambda (_%hd3634936528%_ _%body3635536531%_)
                                  (if (gx#stx-pair? _%hd3634936528%_)
                                      (let ((_%e3635236534%_
                                             (gx#syntax-e _%hd3634936528%_)))
                                        (let ((_%lp-tl3635436541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3635236534%_)))
                                              (_%lp-hd3635336538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3635236534%_))))
                                          (_%loop3635136524%_
                                           _%lp-tl3635436541%_
                                           (cons _%lp-hd3635336538%_
                                                 _%body3635536531%_))))
                                      (let ((_%body3635636544%_
                                             (reverse _%body3635536531%_)))
                                        (_%__kont3955039551%_
                                         _%body3635636544%_
                                         _%tl3634136495%_
                                         _%hd3634636512%_
                                         _%hd3634336502%_
                                         _%hd3633436472%_))))))
                        (_%loop3635136524%_ _%target3634836518%_ '())))))
              (if (gx#stx-pair? _%__stx3954739548%_)
                  (let ((_%e3633336468%_ (gx#syntax-e _%__stx3954739548%_)))
                    (let ((_%tl3633536475%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3633336468%_)))
                          (_%hd3633436472%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3633336468%_))))
                      (if (gx#stx-pair? _%tl3633536475%_)
                          (let ((_%e3633636478%_
                                 (gx#syntax-e _%tl3633536475%_)))
                            (let ((_%tl3633836485%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3633636478%_)))
                                  (_%hd3633736482%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3633636478%_))))
                              (if (gx#stx-pair? _%hd3633736482%_)
                                  (let ((_%e3633936488%_
                                         (gx#syntax-e _%hd3633736482%_)))
                                    (let ((_%tl3634136495%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3633936488%_)))
                                          (_%hd3634036492%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3633936488%_))))
                                      (if (gx#stx-pair? _%hd3634036492%_)
                                          (let ((_%e3634236498%_
                                                 (gx#syntax-e
                                                  _%hd3634036492%_)))
                                            (let ((_%tl3634436505%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3634236498%_)))
                                                  (_%hd3634336502%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3634236498%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3634436505%_)
                                                  (let ((_%e3634536508%_
                                                         (gx#syntax-e
                                                          _%tl3634436505%_)))
                                                    (let ((_%tl3634736515%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3634536508%_)))
                                                          (_%hd3634636512%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3634536508%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3634736515%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3633836485%_)
                                                              (let ((_%__splice3955239553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3633836485%_
                              '0)))
                        (let ((_%tl3635036521%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3955239553%_ '1)))
                              (_%target3634836518%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3955239553%_ '0))))
                          (if (gx#stx-null? _%tl3635036521%_)
                              (_%__match3959839599%_
                               _%e3633336468%_
                               _%hd3633436472%_
                               _%tl3633536475%_
                               _%e3633636478%_
                               _%hd3633736482%_
                               _%tl3633836485%_
                               _%e3633936488%_
                               _%hd3634036492%_
                               _%tl3634136495%_
                               _%e3634236498%_
                               _%hd3634336502%_
                               _%tl3634436505%_
                               _%e3634536508%_
                               _%hd3634636512%_
                               _%tl3634736515%_
                               _%__splice3955239553%_
                               _%target3634836518%_
                               _%tl3635036521%_)
                              (let ()
                                (declare (not safe))
                                (_%g3632636378%_)))))
                      (let () (declare (not safe)) (_%g3632636378%_)))
                  (let () (declare (not safe)) (_%g3632636378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3632636378%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3632636378%_)))))
                                  (if (gx#stx-null? _%hd3633736482%_)
                                      (if (gx#stx-pair/null? _%tl3633836485%_)
                                          (let ((_%__splice3955639557%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3633836485%_
                                                  '0)))
                                            (let ((_%tl3636636408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3955639557%_
                                                      '1)))
                                                  (_%target3636436405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3955639557%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3636636408%_)
                                                  (_%__match3962039621%_
                                                   _%e3633336468%_
                                                   _%hd3633436472%_
                                                   _%tl3633536475%_
                                                   _%e3633636478%_
                                                   _%hd3633736482%_
                                                   _%tl3633836485%_
                                                   _%__splice3955639557%_
                                                   _%target3636436405%_
                                                   _%tl3636636408%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3632636378%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3632636378%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3632636378%_))))))
                          (let () (declare (not safe)) (_%g3632636378%_)))))
                  (let () (declare (not safe)) (_%g3632636378%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36593%_)
        (let* ((_%__stx3962339624%_ _%$stx36593%_)
               (_%g3660436750%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3962339624%_))))
          (let ((_%__kont3962639627%_
                 (lambda (_%L37354%_ _%L37356%_ _%L37357%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3737837381%_ _%g3737937384%_)
                                  (cons (cons _%L37357%_
                                              (cons _%g3737837381%_
                                                    (cons _%L37354%_ '())))
                                        _%g3737937384%_))
                                '()
                                _%L37356%_))))
                (_%__kont3963039631%_
                 (lambda (_%L37244%_ _%L37246%_ _%L37247%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3726837271%_ _%g3726937274%_)
                                  (cons (cons _%L37247%_
                                              (cons _%g3726837271%_
                                                    (cons _%L37244%_ '())))
                                        _%g3726937274%_))
                                '()
                                _%L37246%_))))
                (_%__kont3963439635%_
                 (lambda (_%L37144%_ _%L37146%_ _%L37147%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L37147%_
                                     (cons _%L37146%_ (cons _%L37144%_ '())))
                               '()))))
                (_%__kont3963639637%_
                 (lambda (_%L37070%_ _%L37072%_)
                   (cons _%L37072%_ (cons _%L37070%_ '()))))
                (_%__kont3963839639%_
                 (lambda (_%L37018%_ _%L37020%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L37020%_
                                           (cons _%L37018%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3964039641%_
                 (lambda (_%L36970%_ _%L36972%_ _%L36973%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L36973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L36972%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36970%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3964239643%_
                 (lambda (_%L36901%_ _%L36903%_ _%L36904%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36904%_
                                                       (cons _%L36903%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36901%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3964439645%_
                 (lambda (_%L36821%_ _%L36823%_ _%L36824%_ _%L36825%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36825%_
                                                       (cons _%L36824%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36821%_
                                                             (cons (cons _%L36823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3979639797%_
                    (lambda (_%e3669436930%_
                             _%hd3669536934%_
                             _%tl3669636937%_
                             _%e3669736940%_
                             _%hd3669836944%_
                             _%tl3669936947%_
                             _%e3670036950%_
                             _%hd3670136954%_
                             _%tl3670236957%_)
                      (if (gx#identifier? _%hd3670136954%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39998_|
                               _%hd3670136954%_)
                              (if (gx#stx-pair? _%tl3670236957%_)
                                  (let ((_%e3670336960%_
                                         (gx#syntax-e _%tl3670236957%_)))
                                    (let ((_%tl3670536967%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3670336960%_)))
                                          (_%hd3670436964%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3670336960%_))))
                                      (if (gx#stx-null? _%tl3670536967%_)
                                          (_%__kont3964039641%_
                                           _%hd3670436964%_
                                           _%hd3669836944%_
                                           _%hd3669536934%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660436750%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660436750%_)))
                              (let () (declare (not safe)) (_%g3660436750%_)))
                          (if (gx#stx-datum? _%hd3670136954%_)
                              (let ((_%e3671836887%_
                                     (gx#stx-e _%hd3670136954%_)))
                                (if (equal? _%e3671836887%_ '::)
                                    (if (gx#stx-pair? _%tl3670236957%_)
                                        (let ((_%e3671936891%_
                                               (gx#syntax-e _%tl3670236957%_)))
                                          (let ((_%tl3672136898%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3671936891%_)))
                                                (_%hd3672036895%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3671936891%_))))
                                            (if (gx#stx-null? _%tl3672136898%_)
                                                (_%__kont3964239643%_
                                                 _%hd3672036895%_
                                                 _%hd3669836944%_
                                                 _%hd3669536934%_)
                                                (if (gx#stx-pair?
                                                     _%tl3672136898%_)
                                                    (let ((_%e3673936801%_
                                                           (gx#syntax-e
                                                            _%tl3672136898%_)))
                                                      (let ((_%tl3674136808%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3673936801%_)))
                    (_%hd3674036805%_
                     (let () (declare (not safe)) (##car _%e3673936801%_))))
                (if (gx#identifier? _%hd3674036805%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39999_|
                         _%hd3674036805%_)
                        (if (gx#stx-pair? _%tl3674136808%_)
                            (let ((_%e3674236811%_
                                   (gx#syntax-e _%tl3674136808%_)))
                              (let ((_%tl3674436818%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3674236811%_)))
                                    (_%hd3674336815%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3674236811%_))))
                                (if (gx#stx-null? _%tl3674436818%_)
                                    (_%__kont3964439645%_
                                     _%hd3674336815%_
                                     _%hd3672036895%_
                                     _%hd3669836944%_
                                     _%hd3669536934%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660436750%_)))))
                            (let () (declare (not safe)) (_%g3660436750%_)))
                        (let () (declare (not safe)) (_%g3660436750%_)))
                    (let () (declare (not safe)) (_%g3660436750%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660436750%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660436750%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660436750%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3660436750%_))))))
                   (_%__match3977639777%_
                    (lambda (_%e3668536998%_
                             _%hd3668637002%_
                             _%tl3668737005%_
                             _%e3668837008%_
                             _%hd3668937012%_
                             _%tl3669037015%_)
                      (if (gx#stx-null? _%tl3669037015%_)
                          (_%__kont3963839639%_
                           _%hd3668937012%_
                           _%hd3668637002%_)
                          (if (gx#stx-pair? _%tl3669037015%_)
                              (let ((_%e3670036950%_
                                     (gx#syntax-e _%tl3669037015%_)))
                                (let ((_%tl3670236957%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3670036950%_)))
                                      (_%hd3670136954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3670036950%_))))
                                  (if (gx#identifier? _%hd3670136954%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39998_|
                                           _%hd3670136954%_)
                                          (if (gx#stx-pair? _%tl3670236957%_)
                                              (let ((_%e3670336960%_
                                                     (gx#syntax-e
                                                      _%tl3670236957%_)))
                                                (let ((_%tl3670536967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3670336960%_)))
                                                      (_%hd3670436964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3670336960%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3670536967%_)
                                                      (_%__kont3964039641%_
                                                       _%hd3670436964%_
                                                       _%hd3668937012%_
                                                       _%hd3668637002%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3660436750%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660436750%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660436750%_)))
                                      (if (gx#stx-datum? _%hd3670136954%_)
                                          (let ((_%e3671836887%_
                                                 (gx#stx-e _%hd3670136954%_)))
                                            (if (equal? _%e3671836887%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3670236957%_)
                                                    (let ((_%e3671936891%_
                                                           (gx#syntax-e
                                                            _%tl3670236957%_)))
                                                      (let ((_%tl3672136898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3671936891%_)))
                    (_%hd3672036895%_
                     (let () (declare (not safe)) (##car _%e3671936891%_))))
                (if (gx#stx-null? _%tl3672136898%_)
                    (_%__kont3964239643%_
                     _%hd3672036895%_
                     _%hd3668937012%_
                     _%hd3668637002%_)
                    (if (gx#stx-pair? _%tl3672136898%_)
                        (let ((_%e3673936801%_ (gx#syntax-e _%tl3672136898%_)))
                          (let ((_%tl3674136808%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3673936801%_)))
                                (_%hd3674036805%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3673936801%_))))
                            (if (gx#identifier? _%hd3674036805%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39999_|
                                     _%hd3674036805%_)
                                    (if (gx#stx-pair? _%tl3674136808%_)
                                        (let ((_%e3674236811%_
                                               (gx#syntax-e _%tl3674136808%_)))
                                          (let ((_%tl3674436818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3674236811%_)))
                                                (_%hd3674336815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3674236811%_))))
                                            (if (gx#stx-null? _%tl3674436818%_)
                                                (_%__kont3964439645%_
                                                 _%hd3674336815%_
                                                 _%hd3672036895%_
                                                 _%hd3668937012%_
                                                 _%hd3668637002%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660436750%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660436750%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660436750%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660436750%_)))))
                        (let () (declare (not safe)) (_%g3660436750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660436750%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660436750%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660436750%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3660436750%_))))))
                   (_%__match3970639707%_
                    (lambda (_%e3663337174%_
                             _%hd3663437178%_
                             _%tl3663537181%_
                             _%e3663637184%_
                             _%hd3663737188%_
                             _%tl3663837191%_
                             _%e3663937194%_
                             _%hd3664037198%_
                             _%tl3664137201%_
                             _%__splice3963239633%_
                             _%target3664237204%_
                             _%tl3664437207%_)
                      (letrec ((_%loop3664537210%_
                                (lambda (_%hd3664337214%_ _%pred3664937217%_)
                                  (if (gx#stx-pair? _%hd3664337214%_)
                                      (let ((_%e3664637220%_
                                             (gx#syntax-e _%hd3664337214%_)))
                                        (let ((_%lp-tl3664837227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3664637220%_)))
                                              (_%lp-hd3664737224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3664637220%_))))
                                          (_%loop3664537210%_
                                           _%lp-tl3664837227%_
                                           (cons _%lp-hd3664737224%_
                                                 _%pred3664937217%_))))
                                      (let ((_%pred3665037230%_
                                             (reverse _%pred3664937217%_)))
                                        (if (gx#stx-pair? _%tl3663837191%_)
                                            (let ((_%e3665137234%_
                                                   (gx#syntax-e
                                                    _%tl3663837191%_)))
                                              (let ((_%tl3665337241%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3665137234%_)))
                                                    (_%hd3665237238%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3665137234%_))))
                                                (if (gx#stx-null?
                                                     _%tl3665337241%_)
                                                    (_%__kont3963039631%_
                                                     _%hd3665237238%_
                                                     _%pred3665037230%_
                                                     _%hd3663437178%_)
                                                    (_%__match3979639797%_
                                                     _%e3663337174%_
                                                     _%hd3663437178%_
                                                     _%tl3663537181%_
                                                     _%e3663637184%_
                                                     _%hd3663737188%_
                                                     _%tl3663837191%_
                                                     _%e3665137234%_
                                                     _%hd3665237238%_
                                                     _%tl3665337241%_))))
                                            (_%__match3977639777%_
                                             _%e3663337174%_
                                             _%hd3663437178%_
                                             _%tl3663537181%_
                                             _%e3663637184%_
                                             _%hd3663737188%_
                                             _%tl3663837191%_)))))))
                        (_%loop3664537210%_ _%target3664237204%_ '()))))
                   (_%__match3967639677%_
                    (lambda (_%e3660937284%_
                             _%hd3661037288%_
                             _%tl3661137291%_
                             _%e3661237294%_
                             _%hd3661337298%_
                             _%tl3661437301%_
                             _%e3661537304%_
                             _%hd3661637308%_
                             _%tl3661737311%_
                             _%__splice3962839629%_
                             _%target3661837314%_
                             _%tl3662037317%_)
                      (letrec ((_%loop3662137320%_
                                (lambda (_%hd3661937324%_ _%pred3662537327%_)
                                  (if (gx#stx-pair? _%hd3661937324%_)
                                      (let ((_%e3662237330%_
                                             (gx#syntax-e _%hd3661937324%_)))
                                        (let ((_%lp-tl3662437337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3662237330%_)))
                                              (_%lp-hd3662337334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3662237330%_))))
                                          (_%loop3662137320%_
                                           _%lp-tl3662437337%_
                                           (cons _%lp-hd3662337334%_
                                                 _%pred3662537327%_))))
                                      (let ((_%pred3662637340%_
                                             (reverse _%pred3662537327%_)))
                                        (if (gx#stx-pair? _%tl3661437301%_)
                                            (let ((_%e3662737344%_
                                                   (gx#syntax-e
                                                    _%tl3661437301%_)))
                                              (let ((_%tl3662937351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3662737344%_)))
                                                    (_%hd3662837348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3662737344%_))))
                                                (if (gx#stx-null?
                                                     _%tl3662937351%_)
                                                    (_%__kont3962639627%_
                                                     _%hd3662837348%_
                                                     _%pred3662637340%_
                                                     _%hd3661037288%_)
                                                    (_%__match3979639797%_
                                                     _%e3660937284%_
                                                     _%hd3661037288%_
                                                     _%tl3661137291%_
                                                     _%e3661237294%_
                                                     _%hd3661337298%_
                                                     _%tl3661437301%_
                                                     _%e3662737344%_
                                                     _%hd3662837348%_
                                                     _%tl3662937351%_))))
                                            (_%__match3977639777%_
                                             _%e3660937284%_
                                             _%hd3661037288%_
                                             _%tl3661137291%_
                                             _%e3661237294%_
                                             _%hd3661337298%_
                                             _%tl3661437301%_)))))))
                        (_%loop3662137320%_ _%target3661837314%_ '())))))
              (if (gx#stx-pair? _%__stx3962339624%_)
                  (let ((_%e3660937284%_ (gx#syntax-e _%__stx3962339624%_)))
                    (let ((_%tl3661137291%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3660937284%_)))
                          (_%hd3661037288%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3660937284%_))))
                      (if (gx#stx-pair? _%tl3661137291%_)
                          (let ((_%e3661237294%_
                                 (gx#syntax-e _%tl3661137291%_)))
                            (let ((_%tl3661437301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3661237294%_)))
                                  (_%hd3661337298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3661237294%_))))
                              (if (gx#stx-pair? _%hd3661337298%_)
                                  (let ((_%e3661537304%_
                                         (gx#syntax-e _%hd3661337298%_)))
                                    (let ((_%tl3661737311%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3661537304%_)))
                                          (_%hd3661637308%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3661537304%_))))
                                      (if (gx#identifier? _%hd3661637308%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40000_|
                                               _%hd3661637308%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3661737311%_)
                                                  (let ((_%__splice3962839629%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3661737311%_
                                                          '0)))
                                                    (let ((_%tl3662037317%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3962839629%_
                                                              '1)))
                                                          (_%target3661837314%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3962839629%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3662037317%_)
                                                          (_%__match3967639677%_
                                                           _%e3660937284%_
                                                           _%hd3661037288%_
                                                           _%tl3661137291%_
                                                           _%e3661237294%_
                                                           _%hd3661337298%_
                                                           _%tl3661437301%_
                                                           _%e3661537304%_
                                                           _%hd3661637308%_
                                                           _%tl3661737311%_
                                                           _%__splice3962839629%_
                                                           _%target3661837314%_
                                                           _%tl3662037317%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3661437301%_)
                                                              (let ((_%e3668037060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3661437301%_)))
                        (let ((_%tl3668237067%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3668037060%_)))
                              (_%hd3668137064%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3668037060%_))))
                          (if (gx#stx-null? _%tl3668237067%_)
                              (_%__kont3963639637%_
                               _%hd3668137064%_
                               _%hd3661337298%_)
                              (if (gx#identifier? _%hd3668137064%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39998_|
                                       _%hd3668137064%_)
                                      (if (gx#stx-pair? _%tl3668237067%_)
                                          (let ((_%e3670336960%_
                                                 (gx#syntax-e
                                                  _%tl3668237067%_)))
                                            (let ((_%tl3670536967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3670336960%_)))
                                                  (_%hd3670436964%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3670336960%_))))
                                              (if (gx#stx-null?
                                                   _%tl3670536967%_)
                                                  (_%__kont3964039641%_
                                                   _%hd3670436964%_
                                                   _%hd3661337298%_
                                                   _%hd3661037288%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3660436750%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660436750%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3660436750%_)))
                                  (if (gx#stx-datum? _%hd3668137064%_)
                                      (let ((_%e3671836887%_
                                             (gx#stx-e _%hd3668137064%_)))
                                        (if (equal? _%e3671836887%_ '::)
                                            (if (gx#stx-pair? _%tl3668237067%_)
                                                (let ((_%e3671936891%_
                                                       (gx#syntax-e
                                                        _%tl3668237067%_)))
                                                  (let ((_%tl3672136898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3671936891%_)))
                                                        (_%hd3672036895%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3671936891%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3672136898%_)
                                                        (_%__kont3964239643%_
                                                         _%hd3672036895%_
                                                         _%hd3661337298%_
                                                         _%hd3661037288%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3672136898%_)
                                                            (let ((_%e3673936801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3672136898%_)))
                      (let ((_%tl3674136808%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3673936801%_)))
                            (_%hd3674036805%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3673936801%_))))
                        (if (gx#identifier? _%hd3674036805%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39999_|
                                 _%hd3674036805%_)
                                (if (gx#stx-pair? _%tl3674136808%_)
                                    (let ((_%e3674236811%_
                                           (gx#syntax-e _%tl3674136808%_)))
                                      (let ((_%tl3674436818%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3674236811%_)))
                                            (_%hd3674336815%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3674236811%_))))
                                        (if (gx#stx-null? _%tl3674436818%_)
                                            (_%__kont3964439645%_
                                             _%hd3674336815%_
                                             _%hd3672036895%_
                                             _%hd3661337298%_
                                             _%hd3661037288%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660436750%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660436750%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660436750%_)))
                            (let () (declare (not safe)) (_%g3660436750%_)))))
                    (let () (declare (not safe)) (_%g3660436750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660436750%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660436750%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3660436750%_)))))))
                      (if (gx#stx-null? _%tl3661437301%_)
                          (_%__kont3963839639%_
                           _%hd3661337298%_
                           _%hd3661037288%_)
                          (let () (declare (not safe)) (_%g3660436750%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3661437301%_)
                                                      (let ((_%e3668037060%_
                                                             (gx#syntax-e
                                                              _%tl3661437301%_)))
                                                        (let ((_%tl3668237067%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3668037060%_)))
                      (_%hd3668137064%_
                       (let () (declare (not safe)) (##car _%e3668037060%_))))
                  (if (gx#stx-null? _%tl3668237067%_)
                      (_%__kont3963639637%_ _%hd3668137064%_ _%hd3661337298%_)
                      (if (gx#identifier? _%hd3668137064%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39998_|
                               _%hd3668137064%_)
                              (if (gx#stx-pair? _%tl3668237067%_)
                                  (let ((_%e3670336960%_
                                         (gx#syntax-e _%tl3668237067%_)))
                                    (let ((_%tl3670536967%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3670336960%_)))
                                          (_%hd3670436964%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3670336960%_))))
                                      (if (gx#stx-null? _%tl3670536967%_)
                                          (_%__kont3964039641%_
                                           _%hd3670436964%_
                                           _%hd3661337298%_
                                           _%hd3661037288%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660436750%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660436750%_)))
                              (let () (declare (not safe)) (_%g3660436750%_)))
                          (if (gx#stx-datum? _%hd3668137064%_)
                              (let ((_%e3671836887%_
                                     (gx#stx-e _%hd3668137064%_)))
                                (if (equal? _%e3671836887%_ '::)
                                    (if (gx#stx-pair? _%tl3668237067%_)
                                        (let ((_%e3671936891%_
                                               (gx#syntax-e _%tl3668237067%_)))
                                          (let ((_%tl3672136898%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3671936891%_)))
                                                (_%hd3672036895%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3671936891%_))))
                                            (if (gx#stx-null? _%tl3672136898%_)
                                                (_%__kont3964239643%_
                                                 _%hd3672036895%_
                                                 _%hd3661337298%_
                                                 _%hd3661037288%_)
                                                (if (gx#stx-pair?
                                                     _%tl3672136898%_)
                                                    (let ((_%e3673936801%_
                                                           (gx#syntax-e
                                                            _%tl3672136898%_)))
                                                      (let ((_%tl3674136808%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3673936801%_)))
                    (_%hd3674036805%_
                     (let () (declare (not safe)) (##car _%e3673936801%_))))
                (if (gx#identifier? _%hd3674036805%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39999_|
                         _%hd3674036805%_)
                        (if (gx#stx-pair? _%tl3674136808%_)
                            (let ((_%e3674236811%_
                                   (gx#syntax-e _%tl3674136808%_)))
                              (let ((_%tl3674436818%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3674236811%_)))
                                    (_%hd3674336815%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3674236811%_))))
                                (if (gx#stx-null? _%tl3674436818%_)
                                    (_%__kont3964439645%_
                                     _%hd3674336815%_
                                     _%hd3672036895%_
                                     _%hd3661337298%_
                                     _%hd3661037288%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660436750%_)))))
                            (let () (declare (not safe)) (_%g3660436750%_)))
                        (let () (declare (not safe)) (_%g3660436750%_)))
                    (let () (declare (not safe)) (_%g3660436750%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660436750%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660436750%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660436750%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3660436750%_)))))))
              (if (gx#stx-null? _%tl3661437301%_)
                  (_%__kont3963839639%_ _%hd3661337298%_ _%hd3661037288%_)
                  (let () (declare (not safe)) (_%g3660436750%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40001_|
                                                   _%hd3661637308%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3661737311%_)
                                                      (let ((_%__splice3963239633%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3661737311%_
                                                              '0)))
                                                        (let ((_%tl3664437207%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3963239633%_ '1)))
                      (_%target3664237204%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3963239633%_ '0))))
                  (if (gx#stx-null? _%tl3664437207%_)
                      (_%__match3970639707%_
                       _%e3660937284%_
                       _%hd3661037288%_
                       _%tl3661137291%_
                       _%e3661237294%_
                       _%hd3661337298%_
                       _%tl3661437301%_
                       _%e3661537304%_
                       _%hd3661637308%_
                       _%tl3661737311%_
                       _%__splice3963239633%_
                       _%target3664237204%_
                       _%tl3664437207%_)
                      (if (gx#stx-pair? _%tl3661437301%_)
                          (let ((_%e3668037060%_
                                 (gx#syntax-e _%tl3661437301%_)))
                            (let ((_%tl3668237067%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3668037060%_)))
                                  (_%hd3668137064%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3668037060%_))))
                              (if (gx#stx-null? _%tl3668237067%_)
                                  (_%__kont3963639637%_
                                   _%hd3668137064%_
                                   _%hd3661337298%_)
                                  (if (gx#identifier? _%hd3668137064%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39998_|
                                           _%hd3668137064%_)
                                          (if (gx#stx-pair? _%tl3668237067%_)
                                              (let ((_%e3670336960%_
                                                     (gx#syntax-e
                                                      _%tl3668237067%_)))
                                                (let ((_%tl3670536967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3670336960%_)))
                                                      (_%hd3670436964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3670336960%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3670536967%_)
                                                      (_%__kont3964039641%_
                                                       _%hd3670436964%_
                                                       _%hd3661337298%_
                                                       _%hd3661037288%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3660436750%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660436750%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660436750%_)))
                                      (if (gx#stx-datum? _%hd3668137064%_)
                                          (let ((_%e3671836887%_
                                                 (gx#stx-e _%hd3668137064%_)))
                                            (if (equal? _%e3671836887%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3668237067%_)
                                                    (let ((_%e3671936891%_
                                                           (gx#syntax-e
                                                            _%tl3668237067%_)))
                                                      (let ((_%tl3672136898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3671936891%_)))
                    (_%hd3672036895%_
                     (let () (declare (not safe)) (##car _%e3671936891%_))))
                (if (gx#stx-null? _%tl3672136898%_)
                    (_%__kont3964239643%_
                     _%hd3672036895%_
                     _%hd3661337298%_
                     _%hd3661037288%_)
                    (if (gx#stx-pair? _%tl3672136898%_)
                        (let ((_%e3673936801%_ (gx#syntax-e _%tl3672136898%_)))
                          (let ((_%tl3674136808%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3673936801%_)))
                                (_%hd3674036805%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3673936801%_))))
                            (if (gx#identifier? _%hd3674036805%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39999_|
                                     _%hd3674036805%_)
                                    (if (gx#stx-pair? _%tl3674136808%_)
                                        (let ((_%e3674236811%_
                                               (gx#syntax-e _%tl3674136808%_)))
                                          (let ((_%tl3674436818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3674236811%_)))
                                                (_%hd3674336815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3674236811%_))))
                                            (if (gx#stx-null? _%tl3674436818%_)
                                                (_%__kont3964439645%_
                                                 _%hd3674336815%_
                                                 _%hd3672036895%_
                                                 _%hd3661337298%_
                                                 _%hd3661037288%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660436750%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660436750%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660436750%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660436750%_)))))
                        (let () (declare (not safe)) (_%g3660436750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660436750%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660436750%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660436750%_)))))))
                          (if (gx#stx-null? _%tl3661437301%_)
                              (_%__kont3963839639%_
                               _%hd3661337298%_
                               _%hd3661037288%_)
                              (let ()
                                (declare (not safe))
                                (_%g3660436750%_)))))))
              (if (gx#stx-pair? _%tl3661437301%_)
                  (let ((_%e3668037060%_ (gx#syntax-e _%tl3661437301%_)))
                    (let ((_%tl3668237067%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3668037060%_)))
                          (_%hd3668137064%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3668037060%_))))
                      (if (gx#stx-null? _%tl3668237067%_)
                          (_%__kont3963639637%_
                           _%hd3668137064%_
                           _%hd3661337298%_)
                          (if (gx#identifier? _%hd3668137064%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39998_|
                                   _%hd3668137064%_)
                                  (if (gx#stx-pair? _%tl3668237067%_)
                                      (let ((_%e3670336960%_
                                             (gx#syntax-e _%tl3668237067%_)))
                                        (let ((_%tl3670536967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3670336960%_)))
                                              (_%hd3670436964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3670336960%_))))
                                          (if (gx#stx-null? _%tl3670536967%_)
                                              (_%__kont3964039641%_
                                               _%hd3670436964%_
                                               _%hd3661337298%_
                                               _%hd3661037288%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660436750%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3660436750%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660436750%_)))
                              (if (gx#stx-datum? _%hd3668137064%_)
                                  (let ((_%e3671836887%_
                                         (gx#stx-e _%hd3668137064%_)))
                                    (if (equal? _%e3671836887%_ '::)
                                        (if (gx#stx-pair? _%tl3668237067%_)
                                            (let ((_%e3671936891%_
                                                   (gx#syntax-e
                                                    _%tl3668237067%_)))
                                              (let ((_%tl3672136898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3671936891%_)))
                                                    (_%hd3672036895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3671936891%_))))
                                                (if (gx#stx-null?
                                                     _%tl3672136898%_)
                                                    (_%__kont3964239643%_
                                                     _%hd3672036895%_
                                                     _%hd3661337298%_
                                                     _%hd3661037288%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3672136898%_)
                                                        (let ((_%e3673936801%_
                                                               (gx#syntax-e
                                                                _%tl3672136898%_)))
                                                          (let ((_%tl3674136808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3673936801%_)))
                        (_%hd3674036805%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3673936801%_))))
                    (if (gx#identifier? _%hd3674036805%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39999_|
                             _%hd3674036805%_)
                            (if (gx#stx-pair? _%tl3674136808%_)
                                (let ((_%e3674236811%_
                                       (gx#syntax-e _%tl3674136808%_)))
                                  (let ((_%tl3674436818%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3674236811%_)))
                                        (_%hd3674336815%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3674236811%_))))
                                    (if (gx#stx-null? _%tl3674436818%_)
                                        (_%__kont3964439645%_
                                         _%hd3674336815%_
                                         _%hd3672036895%_
                                         _%hd3661337298%_
                                         _%hd3661037288%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660436750%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660436750%_)))
                            (let () (declare (not safe)) (_%g3660436750%_)))
                        (let () (declare (not safe)) (_%g3660436750%_)))))
                (let () (declare (not safe)) (_%g3660436750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660436750%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660436750%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660436750%_)))))))
                  (if (gx#stx-null? _%tl3661437301%_)
                      (_%__kont3963839639%_ _%hd3661337298%_ _%hd3661037288%_)
                      (let () (declare (not safe)) (_%g3660436750%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40002_|
                                                       _%hd3661637308%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3661737311%_)
                                                          (let ((_%e3666637124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3661737311%_)))
                    (let ((_%tl3666837131%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3666637124%_)))
                          (_%hd3666737128%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3666637124%_))))
                      (if (gx#stx-null? _%tl3666837131%_)
                          (if (gx#stx-pair? _%tl3661437301%_)
                              (let ((_%e3666937134%_
                                     (gx#syntax-e _%tl3661437301%_)))
                                (let ((_%tl3667137141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3666937134%_)))
                                      (_%hd3667037138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3666937134%_))))
                                  (if (gx#stx-null? _%tl3667137141%_)
                                      (_%__kont3963439635%_
                                       _%hd3667037138%_
                                       _%hd3666737128%_
                                       _%hd3661037288%_)
                                      (if (gx#identifier? _%hd3667037138%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39998_|
                                               _%hd3667037138%_)
                                              (if (gx#stx-pair?
                                                   _%tl3667137141%_)
                                                  (let ((_%e3670336960%_
                                                         (gx#syntax-e
                                                          _%tl3667137141%_)))
                                                    (let ((_%tl3670536967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3670336960%_)))
                                                          (_%hd3670436964%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3670336960%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3670536967%_)
                                                          (_%__kont3964039641%_
                                                           _%hd3670436964%_
                                                           _%hd3661337298%_
                                                           _%hd3661037288%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3660436750%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3660436750%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660436750%_)))
                                          (if (gx#stx-datum? _%hd3667037138%_)
                                              (let ((_%e3671836887%_
                                                     (gx#stx-e
                                                      _%hd3667037138%_)))
                                                (if (equal? _%e3671836887%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3667137141%_)
                                                        (let ((_%e3671936891%_
                                                               (gx#syntax-e
                                                                _%tl3667137141%_)))
                                                          (let ((_%tl3672136898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3671936891%_)))
                        (_%hd3672036895%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3671936891%_))))
                    (if (gx#stx-null? _%tl3672136898%_)
                        (_%__kont3964239643%_
                         _%hd3672036895%_
                         _%hd3661337298%_
                         _%hd3661037288%_)
                        (if (gx#stx-pair? _%tl3672136898%_)
                            (let ((_%e3673936801%_
                                   (gx#syntax-e _%tl3672136898%_)))
                              (let ((_%tl3674136808%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3673936801%_)))
                                    (_%hd3674036805%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3673936801%_))))
                                (if (gx#identifier? _%hd3674036805%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39999_|
                                         _%hd3674036805%_)
                                        (if (gx#stx-pair? _%tl3674136808%_)
                                            (let ((_%e3674236811%_
                                                   (gx#syntax-e
                                                    _%tl3674136808%_)))
                                              (let ((_%tl3674436818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3674236811%_)))
                                                    (_%hd3674336815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3674236811%_))))
                                                (if (gx#stx-null?
                                                     _%tl3674436818%_)
                                                    (_%__kont3964439645%_
                                                     _%hd3674336815%_
                                                     _%hd3672036895%_
                                                     _%hd3661337298%_
                                                     _%hd3661037288%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660436750%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660436750%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660436750%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660436750%_)))))
                            (let () (declare (not safe)) (_%g3660436750%_))))))
                (let () (declare (not safe)) (_%g3660436750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660436750%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660436750%_)))))))
                              (if (gx#stx-null? _%tl3661437301%_)
                                  (_%__kont3963839639%_
                                   _%hd3661337298%_
                                   _%hd3661037288%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660436750%_))))
                          (if (gx#stx-pair? _%tl3661437301%_)
                              (let ((_%e3668037060%_
                                     (gx#syntax-e _%tl3661437301%_)))
                                (let ((_%tl3668237067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3668037060%_)))
                                      (_%hd3668137064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3668037060%_))))
                                  (if (gx#stx-null? _%tl3668237067%_)
                                      (_%__kont3963639637%_
                                       _%hd3668137064%_
                                       _%hd3661337298%_)
                                      (if (gx#identifier? _%hd3668137064%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39998_|
                                               _%hd3668137064%_)
                                              (if (gx#stx-pair?
                                                   _%tl3668237067%_)
                                                  (let ((_%e3670336960%_
                                                         (gx#syntax-e
                                                          _%tl3668237067%_)))
                                                    (let ((_%tl3670536967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3670336960%_)))
                                                          (_%hd3670436964%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3670336960%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3670536967%_)
                                                          (_%__kont3964039641%_
                                                           _%hd3670436964%_
                                                           _%hd3661337298%_
                                                           _%hd3661037288%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3660436750%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3660436750%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660436750%_)))
                                          (if (gx#stx-datum? _%hd3668137064%_)
                                              (let ((_%e3671836887%_
                                                     (gx#stx-e
                                                      _%hd3668137064%_)))
                                                (if (equal? _%e3671836887%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3668237067%_)
                                                        (let ((_%e3671936891%_
                                                               (gx#syntax-e
                                                                _%tl3668237067%_)))
                                                          (let ((_%tl3672136898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3671936891%_)))
                        (_%hd3672036895%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3671936891%_))))
                    (if (gx#stx-null? _%tl3672136898%_)
                        (_%__kont3964239643%_
                         _%hd3672036895%_
                         _%hd3661337298%_
                         _%hd3661037288%_)
                        (if (gx#stx-pair? _%tl3672136898%_)
                            (let ((_%e3673936801%_
                                   (gx#syntax-e _%tl3672136898%_)))
                              (let ((_%tl3674136808%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3673936801%_)))
                                    (_%hd3674036805%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3673936801%_))))
                                (if (gx#identifier? _%hd3674036805%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39999_|
                                         _%hd3674036805%_)
                                        (if (gx#stx-pair? _%tl3674136808%_)
                                            (let ((_%e3674236811%_
                                                   (gx#syntax-e
                                                    _%tl3674136808%_)))
                                              (let ((_%tl3674436818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3674236811%_)))
                                                    (_%hd3674336815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3674236811%_))))
                                                (if (gx#stx-null?
                                                     _%tl3674436818%_)
                                                    (_%__kont3964439645%_
                                                     _%hd3674336815%_
                                                     _%hd3672036895%_
                                                     _%hd3661337298%_
                                                     _%hd3661037288%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660436750%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660436750%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660436750%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660436750%_)))))
                            (let () (declare (not safe)) (_%g3660436750%_))))))
                (let () (declare (not safe)) (_%g3660436750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660436750%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660436750%_)))))))
                              (if (gx#stx-null? _%tl3661437301%_)
                                  (_%__kont3963839639%_
                                   _%hd3661337298%_
                                   _%hd3661037288%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660436750%_)))))))
                  (if (gx#stx-pair? _%tl3661437301%_)
                      (let ((_%e3668037060%_ (gx#syntax-e _%tl3661437301%_)))
                        (let ((_%tl3668237067%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3668037060%_)))
                              (_%hd3668137064%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3668037060%_))))
                          (if (gx#stx-null? _%tl3668237067%_)
                              (_%__kont3963639637%_
                               _%hd3668137064%_
                               _%hd3661337298%_)
                              (if (gx#identifier? _%hd3668137064%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39998_|
                                       _%hd3668137064%_)
                                      (if (gx#stx-pair? _%tl3668237067%_)
                                          (let ((_%e3670336960%_
                                                 (gx#syntax-e
                                                  _%tl3668237067%_)))
                                            (let ((_%tl3670536967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3670336960%_)))
                                                  (_%hd3670436964%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3670336960%_))))
                                              (if (gx#stx-null?
                                                   _%tl3670536967%_)
                                                  (_%__kont3964039641%_
                                                   _%hd3670436964%_
                                                   _%hd3661337298%_
                                                   _%hd3661037288%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3660436750%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660436750%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3660436750%_)))
                                  (if (gx#stx-datum? _%hd3668137064%_)
                                      (let ((_%e3671836887%_
                                             (gx#stx-e _%hd3668137064%_)))
                                        (if (equal? _%e3671836887%_ '::)
                                            (if (gx#stx-pair? _%tl3668237067%_)
                                                (let ((_%e3671936891%_
                                                       (gx#syntax-e
                                                        _%tl3668237067%_)))
                                                  (let ((_%tl3672136898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3671936891%_)))
                                                        (_%hd3672036895%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3671936891%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3672136898%_)
                                                        (_%__kont3964239643%_
                                                         _%hd3672036895%_
                                                         _%hd3661337298%_
                                                         _%hd3661037288%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3672136898%_)
                                                            (let ((_%e3673936801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3672136898%_)))
                      (let ((_%tl3674136808%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3673936801%_)))
                            (_%hd3674036805%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3673936801%_))))
                        (if (gx#identifier? _%hd3674036805%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39999_|
                                 _%hd3674036805%_)
                                (if (gx#stx-pair? _%tl3674136808%_)
                                    (let ((_%e3674236811%_
                                           (gx#syntax-e _%tl3674136808%_)))
                                      (let ((_%tl3674436818%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3674236811%_)))
                                            (_%hd3674336815%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3674236811%_))))
                                        (if (gx#stx-null? _%tl3674436818%_)
                                            (_%__kont3964439645%_
                                             _%hd3674336815%_
                                             _%hd3672036895%_
                                             _%hd3661337298%_
                                             _%hd3661037288%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660436750%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660436750%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660436750%_)))
                            (let () (declare (not safe)) (_%g3660436750%_)))))
                    (let () (declare (not safe)) (_%g3660436750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660436750%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660436750%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3660436750%_)))))))
                      (if (gx#stx-null? _%tl3661437301%_)
                          (_%__kont3963839639%_
                           _%hd3661337298%_
                           _%hd3661037288%_)
                          (let () (declare (not safe)) (_%g3660436750%_)))))
              (if (gx#stx-pair? _%tl3661437301%_)
                  (let ((_%e3668037060%_ (gx#syntax-e _%tl3661437301%_)))
                    (let ((_%tl3668237067%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3668037060%_)))
                          (_%hd3668137064%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3668037060%_))))
                      (if (gx#stx-null? _%tl3668237067%_)
                          (_%__kont3963639637%_
                           _%hd3668137064%_
                           _%hd3661337298%_)
                          (if (gx#identifier? _%hd3668137064%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39998_|
                                   _%hd3668137064%_)
                                  (if (gx#stx-pair? _%tl3668237067%_)
                                      (let ((_%e3670336960%_
                                             (gx#syntax-e _%tl3668237067%_)))
                                        (let ((_%tl3670536967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3670336960%_)))
                                              (_%hd3670436964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3670336960%_))))
                                          (if (gx#stx-null? _%tl3670536967%_)
                                              (_%__kont3964039641%_
                                               _%hd3670436964%_
                                               _%hd3661337298%_
                                               _%hd3661037288%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3660436750%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3660436750%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660436750%_)))
                              (if (gx#stx-datum? _%hd3668137064%_)
                                  (let ((_%e3671836887%_
                                         (gx#stx-e _%hd3668137064%_)))
                                    (if (equal? _%e3671836887%_ '::)
                                        (if (gx#stx-pair? _%tl3668237067%_)
                                            (let ((_%e3671936891%_
                                                   (gx#syntax-e
                                                    _%tl3668237067%_)))
                                              (let ((_%tl3672136898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3671936891%_)))
                                                    (_%hd3672036895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3671936891%_))))
                                                (if (gx#stx-null?
                                                     _%tl3672136898%_)
                                                    (_%__kont3964239643%_
                                                     _%hd3672036895%_
                                                     _%hd3661337298%_
                                                     _%hd3661037288%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3672136898%_)
                                                        (let ((_%e3673936801%_
                                                               (gx#syntax-e
                                                                _%tl3672136898%_)))
                                                          (let ((_%tl3674136808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3673936801%_)))
                        (_%hd3674036805%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3673936801%_))))
                    (if (gx#identifier? _%hd3674036805%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39999_|
                             _%hd3674036805%_)
                            (if (gx#stx-pair? _%tl3674136808%_)
                                (let ((_%e3674236811%_
                                       (gx#syntax-e _%tl3674136808%_)))
                                  (let ((_%tl3674436818%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3674236811%_)))
                                        (_%hd3674336815%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3674236811%_))))
                                    (if (gx#stx-null? _%tl3674436818%_)
                                        (_%__kont3964439645%_
                                         _%hd3674336815%_
                                         _%hd3672036895%_
                                         _%hd3661337298%_
                                         _%hd3661037288%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660436750%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660436750%_)))
                            (let () (declare (not safe)) (_%g3660436750%_)))
                        (let () (declare (not safe)) (_%g3660436750%_)))))
                (let () (declare (not safe)) (_%g3660436750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660436750%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3660436750%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660436750%_)))))))
                  (if (gx#stx-null? _%tl3661437301%_)
                      (_%__kont3963839639%_ _%hd3661337298%_ _%hd3661037288%_)
                      (let () (declare (not safe)) (_%g3660436750%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3661437301%_)
                                              (let ((_%e3668037060%_
                                                     (gx#syntax-e
                                                      _%tl3661437301%_)))
                                                (let ((_%tl3668237067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3668037060%_)))
                                                      (_%hd3668137064%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3668037060%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3668237067%_)
                                                      (_%__kont3963639637%_
                                                       _%hd3668137064%_
                                                       _%hd3661337298%_)
                                                      (if (gx#identifier?
                                                           _%hd3668137064%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39998_|
                                                               _%hd3668137064%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3668237067%_)
                          (let ((_%e3670336960%_
                                 (gx#syntax-e _%tl3668237067%_)))
                            (let ((_%tl3670536967%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3670336960%_)))
                                  (_%hd3670436964%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3670336960%_))))
                              (if (gx#stx-null? _%tl3670536967%_)
                                  (_%__kont3964039641%_
                                   _%hd3670436964%_
                                   _%hd3661337298%_
                                   _%hd3661037288%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3660436750%_)))))
                          (let () (declare (not safe)) (_%g3660436750%_)))
                      (let () (declare (not safe)) (_%g3660436750%_)))
                  (if (gx#stx-datum? _%hd3668137064%_)
                      (let ((_%e3671836887%_ (gx#stx-e _%hd3668137064%_)))
                        (if (equal? _%e3671836887%_ '::)
                            (if (gx#stx-pair? _%tl3668237067%_)
                                (let ((_%e3671936891%_
                                       (gx#syntax-e _%tl3668237067%_)))
                                  (let ((_%tl3672136898%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3671936891%_)))
                                        (_%hd3672036895%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3671936891%_))))
                                    (if (gx#stx-null? _%tl3672136898%_)
                                        (_%__kont3964239643%_
                                         _%hd3672036895%_
                                         _%hd3661337298%_
                                         _%hd3661037288%_)
                                        (if (gx#stx-pair? _%tl3672136898%_)
                                            (let ((_%e3673936801%_
                                                   (gx#syntax-e
                                                    _%tl3672136898%_)))
                                              (let ((_%tl3674136808%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3673936801%_)))
                                                    (_%hd3674036805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3673936801%_))))
                                                (if (gx#identifier?
                                                     _%hd3674036805%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39999_|
                                                         _%hd3674036805%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3674136808%_)
                                                            (let ((_%e3674236811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3674136808%_)))
                      (let ((_%tl3674436818%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3674236811%_)))
                            (_%hd3674336815%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3674236811%_))))
                        (if (gx#stx-null? _%tl3674436818%_)
                            (_%__kont3964439645%_
                             _%hd3674336815%_
                             _%hd3672036895%_
                             _%hd3661337298%_
                             _%hd3661037288%_)
                            (let () (declare (not safe)) (_%g3660436750%_)))))
                    (let () (declare (not safe)) (_%g3660436750%_)))
                (let () (declare (not safe)) (_%g3660436750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660436750%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660436750%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3660436750%_)))
                            (let () (declare (not safe)) (_%g3660436750%_))))
                      (let () (declare (not safe)) (_%g3660436750%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3661437301%_)
                                                  (_%__kont3963839639%_
                                                   _%hd3661337298%_
                                                   _%hd3661037288%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3660436750%_)))))))
                                  (if (gx#stx-pair? _%tl3661437301%_)
                                      (let ((_%e3668037060%_
                                             (gx#syntax-e _%tl3661437301%_)))
                                        (let ((_%tl3668237067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3668037060%_)))
                                              (_%hd3668137064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3668037060%_))))
                                          (if (gx#stx-null? _%tl3668237067%_)
                                              (_%__kont3963639637%_
                                               _%hd3668137064%_
                                               _%hd3661337298%_)
                                              (if (gx#identifier?
                                                   _%hd3668137064%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39998_|
                                                       _%hd3668137064%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3668237067%_)
                                                          (let ((_%e3670336960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3668237067%_)))
                    (let ((_%tl3670536967%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3670336960%_)))
                          (_%hd3670436964%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3670336960%_))))
                      (if (gx#stx-null? _%tl3670536967%_)
                          (_%__kont3964039641%_
                           _%hd3670436964%_
                           _%hd3661337298%_
                           _%hd3661037288%_)
                          (let () (declare (not safe)) (_%g3660436750%_)))))
                  (let () (declare (not safe)) (_%g3660436750%_)))
              (let () (declare (not safe)) (_%g3660436750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3668137064%_)
                                                      (let ((_%e3671836887%_
                                                             (gx#stx-e
                                                              _%hd3668137064%_)))
                                                        (if (equal? _%e3671836887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3668237067%_)
                        (let ((_%e3671936891%_ (gx#syntax-e _%tl3668237067%_)))
                          (let ((_%tl3672136898%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3671936891%_)))
                                (_%hd3672036895%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3671936891%_))))
                            (if (gx#stx-null? _%tl3672136898%_)
                                (_%__kont3964239643%_
                                 _%hd3672036895%_
                                 _%hd3661337298%_
                                 _%hd3661037288%_)
                                (if (gx#stx-pair? _%tl3672136898%_)
                                    (let ((_%e3673936801%_
                                           (gx#syntax-e _%tl3672136898%_)))
                                      (let ((_%tl3674136808%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3673936801%_)))
                                            (_%hd3674036805%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3673936801%_))))
                                        (if (gx#identifier? _%hd3674036805%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39999_|
                                                 _%hd3674036805%_)
                                                (if (gx#stx-pair?
                                                     _%tl3674136808%_)
                                                    (let ((_%e3674236811%_
                                                           (gx#syntax-e
                                                            _%tl3674136808%_)))
                                                      (let ((_%tl3674436818%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3674236811%_)))
                    (_%hd3674336815%_
                     (let () (declare (not safe)) (##car _%e3674236811%_))))
                (if (gx#stx-null? _%tl3674436818%_)
                    (_%__kont3964439645%_
                     _%hd3674336815%_
                     _%hd3672036895%_
                     _%hd3661337298%_
                     _%hd3661037288%_)
                    (let () (declare (not safe)) (_%g3660436750%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3660436750%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3660436750%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3660436750%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3660436750%_))))))
                        (let () (declare (not safe)) (_%g3660436750%_)))
                    (let () (declare (not safe)) (_%g3660436750%_))))
              (let () (declare (not safe)) (_%g3660436750%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3661437301%_)
                                          (_%__kont3963839639%_
                                           _%hd3661337298%_
                                           _%hd3661037288%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3660436750%_)))))))
                          (let () (declare (not safe)) (_%g3660436750%_)))))
                  (let () (declare (not safe)) (_%g3660436750%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37393%_)
        (let* ((_%__stx3989139892%_ _%$stx37393%_)
               (_%g3739837432%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3989139892%_))))
          (let ((_%__kont3989439895%_
                 (lambda (_%L37536%_ _%L37538%_ _%L37539%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37539%_
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
                                       (cons _%L37538%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37536%_ '()))
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
                (_%__kont3989639897%_
                 (lambda (_%L37469%_ _%L37471%_ _%L37472%_)
                   (cons _%L37472%_
                         (cons _%L37471%_
                               (cons _%L37469%_
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
            (let ((_%__match3992439925%_
                   (lambda (_%e3740337496%_
                            _%hd3740437500%_
                            _%tl3740537503%_
                            _%e3740637506%_
                            _%hd3740737510%_
                            _%tl3740837513%_
                            _%e3740937516%_
                            _%hd3741037520%_
                            _%tl3741137523%_
                            _%e3741237526%_
                            _%hd3741337530%_
                            _%tl3741437533%_)
                     (let ((_%L37536%_ _%hd3741337530%_)
                           (_%L37538%_ _%hd3741037520%_)
                           (_%L37539%_ _%hd3740737510%_))
                       (if (gx#identifier? _%L37539%_)
                           (_%__kont3989439895%_
                            _%L37536%_
                            _%L37538%_
                            _%L37539%_)
                           (let () (declare (not safe)) (_%g3739837432%_)))))))
              (if (gx#stx-pair? _%__stx3989139892%_)
                  (let ((_%e3740337496%_ (gx#syntax-e _%__stx3989139892%_)))
                    (let ((_%tl3740537503%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3740337496%_)))
                          (_%hd3740437500%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3740337496%_))))
                      (if (gx#stx-pair? _%tl3740537503%_)
                          (let ((_%e3740637506%_
                                 (gx#syntax-e _%tl3740537503%_)))
                            (let ((_%tl3740837513%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3740637506%_)))
                                  (_%hd3740737510%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3740637506%_))))
                              (if (gx#stx-pair? _%tl3740837513%_)
                                  (let ((_%e3740937516%_
                                         (gx#syntax-e _%tl3740837513%_)))
                                    (let ((_%tl3741137523%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3740937516%_)))
                                          (_%hd3741037520%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3740937516%_))))
                                      (if (gx#stx-pair? _%tl3741137523%_)
                                          (let ((_%e3741237526%_
                                                 (gx#syntax-e
                                                  _%tl3741137523%_)))
                                            (let ((_%tl3741437533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3741237526%_)))
                                                  (_%hd3741337530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3741237526%_))))
                                              (if (gx#stx-null?
                                                   _%tl3741437533%_)
                                                  (_%__match3992439925%_
                                                   _%e3740337496%_
                                                   _%hd3740437500%_
                                                   _%tl3740537503%_
                                                   _%e3740637506%_
                                                   _%hd3740737510%_
                                                   _%tl3740837513%_
                                                   _%e3740937516%_
                                                   _%hd3741037520%_
                                                   _%tl3741137523%_
                                                   _%e3741237526%_
                                                   _%hd3741337530%_
                                                   _%tl3741437533%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3739837432%_)))))
                                          (if (gx#stx-null? _%tl3741137523%_)
                                              (_%__kont3989639897%_
                                               _%hd3741037520%_
                                               _%hd3740737510%_
                                               _%hd3740437500%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3739837432%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3739837432%_)))))
                          (let () (declare (not safe)) (_%g3739837432%_)))))
                  (let () (declare (not safe)) (_%g3739837432%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37561%_)
        (let* ((_%g3756537580%_
                (lambda (_%g3756637576%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3756637576%_)))
               (_%g3756437623%_
                (lambda (_%g3756637584%_)
                  (if (gx#stx-pair? _%g3756637584%_)
                      (let ((_%e3756937587%_ (gx#syntax-e _%g3756637584%_)))
                        (let ((_%hd3757037591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3756937587%_)))
                              (_%tl3757137594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3756937587%_))))
                          (if (gx#stx-pair? _%tl3757137594%_)
                              (let ((_%e3757237597%_
                                     (gx#syntax-e _%tl3757137594%_)))
                                (let ((_%hd3757337601%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3757237597%_)))
                                      (_%tl3757437604%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3757237597%_))))
                                  ((lambda (_%L37607%_ _%L37609%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37609%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37607%_)
                                                       '()))))
                                   _%tl3757437604%_
                                   _%hd3757337601%_)))
                              (_%g3756537580%_ _%g3756637584%_))))
                      (_%g3756537580%_ _%g3756637584%_)))))
          (_%g3756437623%_ _%$stx37561%_))))))
