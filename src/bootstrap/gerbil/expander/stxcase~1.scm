(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g189688_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189690_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189692_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189694_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189696_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189697_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189698_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189700_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189701_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189702_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189704_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189705_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189706_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189708_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189709_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g189710_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (let ((__obj189565
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
          (##unchecked-structure-set!
           __obj189565
           'gx#syntax-pattern::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 'syntax-pattern '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 '(id depth) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 '(e id depth) '7 '#f '#f))
        (let ((__tmp189687 (cons |gx[1]#_g189688_| '())))
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 __tmp189687 '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 '#f '12 '#f '#f))
        (let ((__tmp189689 |gx[1]#_g189690_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 __tmp189689 '3 '#f '#f))
        (let ((__tmp189691 |gx[1]#_g189692_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 __tmp189691 '13 '#f '#f))
        (let ((__tmp189693 |gx[1]#_g189694_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 __tmp189693 '14 '#f '#f))
        (let ((__tmp189695
               (cons (cons 'id |gx[1]#_g189696_|)
                     (cons (cons 'depth |gx[1]#_g189697_|)
                           (cons (cons 'e |gx[1]#_g189698_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 __tmp189695 '15 '#f '#f))
        (let ((__tmp189699
               (cons (cons 'id |gx[1]#_g189700_|)
                     (cons (cons 'depth |gx[1]#_g189701_|)
                           (cons (cons 'e |gx[1]#_g189702_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 __tmp189699 '16 '#f '#f))
        (let ((__tmp189703
               (cons (cons 'id |gx[1]#_g189704_|)
                     (cons (cons 'depth |gx[1]#_g189705_|)
                           (cons (cons 'e |gx[1]#_g189706_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 __tmp189703 '17 '#f '#f))
        (let ((__tmp189707
               (cons (cons 'id |gx[1]#_g189708_|)
                     (cons (cons 'depth |gx[1]#_g189709_|)
                           (cons (cons 'e |gx[1]#_g189710_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 __tmp189707 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj189565 '() '20 '#f '#f))
        __obj189565))
    (define |gx[:0:]#syntax-split-splice*|
      (lambda (_%$stx188020%_)
        (let* ((_%g188024188046%_
                (lambda (_%g188025188042%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188025188042%_))))
               (_%g188023188116%_
                (lambda (_%g188025188050%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188025188050%_))
                      (let ((_%e188029188053%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g188025188050%_))))
                        (let ((_%hd188030188057%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188029188053%_)))
                              (_%tl188031188060%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188029188053%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl188031188060%_))
                              (let ((_%e188032188063%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl188031188060%_))))
                                (let ((_%hd188033188067%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188032188063%_)))
                                      (_%tl188034188070%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188032188063%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188034188070%_))
                                      (let ((_%e188035188073%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl188034188070%_))))
                                        (let ((_%hd188036188077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188035188073%_)))
                                              (_%tl188037188080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188035188073%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl188037188080%_))
                                              (let ((_%e188038188083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl188037188080%_))))
                                                (let ((_%hd188039188087%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188038188083%_)))
                                                      (_%tl188040188090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188038188083%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl188040188090%_))
                                                      ((lambda (_%g188026188093%_
                                                                _%g188027188095%_
                                                                _%g188028188096%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'let))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lp))
                             (cons (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'rest))
                                               (cons _%g188028188096%_ '()))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'r))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '@list))
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0 '#f 'if))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'stx-pair?))
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'rest))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'match))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax-e))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'rest))
                                           '()))
                               (cons (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '@list))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'hd))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'rest))))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'lp))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'rest))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'cons))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'hd))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0 '#f 'r))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'let))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'lp))
                                     (cons (cons (cons _%g188027188095%_
                                                       (cons _%g188027188095%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'l))
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'r))
                           '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'r))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'rest))
                                 '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'cond))
                                                       (cons (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'null?))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'l))
                                       '()))
                           (cons (cons _%g188026188093%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0 '#f 'l))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'r))
                                                   '())))
                                 '()))
                     (cons (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'fxpositive?))
                                       (cons _%g188027188095%_ '()))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0 '#f 'lp))
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'fx1-))
                                                         (cons _%g188027188095%_
                                                               '()))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'cdr))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'l))
                             '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'cons))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'car))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0 '#f 'l))
                                               '()))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'r))
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'else))
                                       (cons (cons _%g188026188093%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'reverse!))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'l))
                             '()))
                 (cons (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'r))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
               _%hd188039188087%_
               _%hd188036188077%_
               _%hd188033188067%_)
              (_%g188024188046%_ _%g188025188050%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g188024188046%_
                                               _%g188025188050%_))))
                                      (_%g188024188046%_ _%g188025188050%_))))
                              (_%g188024188046%_ _%g188025188050%_))))
                      (_%g188024188046%_ _%g188025188050%_)))))
          (_%g188023188116%_ _%$stx188020%_))))))
