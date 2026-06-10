(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g169249_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169250_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169251_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169252_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169253_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169254_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169255_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169256_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169257_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169258_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169259_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169260_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169261_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169262_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169263_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169264_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (gerbil/core/mop~MOP-2#make-class-type-info
       'id:
       'gx#syntax-pattern::t
       'name:
       'syntax-pattern
       'slots:
       '(id depth)
       'ordered-slots:
       '(e id depth)
       'super:
       (cons |gx[1]#_g169249_| '())
       'struct?:
       '#t
       'final?:
       '#f
       'metaclass:
       '#f
       'constructor-method:
       '#f
       'type-descriptor:
       |gx[1]#_g169250_|
       'constructor:
       |gx[1]#_g169251_|
       'predicate:
       |gx[1]#_g169252_|
       'accessors:
       (cons (cons 'id |gx[1]#_g169253_|)
             (cons (cons 'depth |gx[1]#_g169254_|)
                   (cons (cons 'e |gx[1]#_g169255_|) '())))
       'mutators:
       (cons (cons 'id |gx[1]#_g169256_|)
             (cons (cons 'depth |gx[1]#_g169257_|)
                   (cons (cons 'e |gx[1]#_g169258_|) '())))
       'unchecked-accessors:
       (cons (cons 'id |gx[1]#_g169259_|)
             (cons (cons 'depth |gx[1]#_g169260_|)
                   (cons (cons 'e |gx[1]#_g169261_|) '())))
       'unchecked-mutators:
       (cons (cons 'id |gx[1]#_g169262_|)
             (cons (cons 'depth |gx[1]#_g169263_|)
                   (cons (cons 'e |gx[1]#_g169264_|) '())))
       'slot-types:
       '()
       'slot-contracts:
       '()
       'slot-defaults:
       '()))
    (define |gx[:0:]#syntax-split-splice*|
      (lambda (_%$stx167678%_)
        (let* ((_%$%g167682167704%_
                (lambda (_%$%g167683167700%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g167683167700%_)))
               (_%$%g167681167774%_
                (lambda (_%$%g167683167708%_)
                  (if (gx#stx-pair? _%$%g167683167708%_)
                      (let ((_%$%e167687167711%_
                             (gx#syntax-e _%$%g167683167708%_)))
                        (let ((_%$%hd167688167715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e167687167711%_)))
                              (_%$%tl167689167718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e167687167711%_))))
                          (if (gx#stx-pair? _%$%tl167689167718%_)
                              (let ((_%$%e167690167721%_
                                     (gx#syntax-e _%$%tl167689167718%_)))
                                (let ((_%$%hd167691167725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e167690167721%_)))
                                      (_%$%tl167692167728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e167690167721%_))))
                                  (if (gx#stx-pair? _%$%tl167692167728%_)
                                      (let ((_%$%e167693167731%_
                                             (gx#syntax-e
                                              _%$%tl167692167728%_)))
                                        (let ((_%$%hd167694167735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e167693167731%_)))
                                              (_%$%tl167695167738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e167693167731%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl167695167738%_)
                                              (let ((_%$%e167696167741%_
                                                     (gx#syntax-e
                                                      _%$%tl167695167738%_)))
                                                (let ((_%$%hd167697167745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e167696167741%_)))
                                                      (_%$%tl167698167748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e167696167741%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl167698167748%_)
                                                      ((lambda (_%$%g167684167751%_
                                                                _%$%g167685167753%_
                                                                _%$%g167686167754%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lp)
                             (cons (cons (cons (gx#datum->syntax '#f 'rest)
                                               (cons _%$%g167686167754%_ '()))
                                         (cons (cons (gx#datum->syntax '#f 'r)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'stx-pair?)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'rest)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'match)
                         (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                     (cons (gx#datum->syntax '#f 'rest) '()))
                               (cons (cons (cons (gx#datum->syntax '#f '@list)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'hd)
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lp)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'rest)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'cons)
                                 (cons (gx#datum->syntax '#f 'hd)
                                       (cons (gx#datum->syntax '#f 'r) '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (gx#datum->syntax '#f 'lp)
                                     (cons (cons (cons _%$%g167685167753%_
                                                       (cons _%$%g167685167753%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'l)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'r)
                           '()))
               (cons (cons (gx#datum->syntax '#f 'r)
                           (cons (gx#datum->syntax '#f 'rest) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'cond)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'null?)
                                 (cons (gx#datum->syntax '#f 'l) '()))
                           (cons (cons _%$%g167684167751%_
                                       (cons (gx#datum->syntax '#f 'l)
                                             (cons (gx#datum->syntax '#f 'r)
                                                   '())))
                                 '()))
                     (cons (cons (cons (gx#datum->syntax '#f 'fxpositive?)
                                       (cons _%$%g167685167753%_ '()))
                                 (cons (cons (gx#datum->syntax '#f 'lp)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'fx1-)
                                                         (cons _%$%g167685167753%_
                                                               '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cdr)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'l)
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'cons)
                             (cons (cons (gx#datum->syntax '#f 'car)
                                         (cons (gx#datum->syntax '#f 'l) '()))
                                   (cons (gx#datum->syntax '#f 'r) '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'else)
                                       (cons (cons _%$%g167684167751%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'reverse!)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'l)
                             '()))
                 (cons (gx#datum->syntax '#f 'r) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
               _%$%hd167697167745%_
               _%$%hd167694167735%_
               _%$%hd167691167725%_)
              (_%$%g167682167704%_ _%$%g167683167708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g167682167704%_
                                               _%$%g167683167708%_))))
                                      (_%$%g167682167704%_
                                       _%$%g167683167708%_))))
                              (_%$%g167682167704%_ _%$%g167683167708%_))))
                      (_%$%g167682167704%_ _%$%g167683167708%_)))))
          (_%$%g167681167774%_ _%$stx167678%_))))))
