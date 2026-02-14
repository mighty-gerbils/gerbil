(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g190219_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190221_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190223_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190225_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190227_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190228_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190229_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190231_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190232_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190233_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190235_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190236_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190237_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190239_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190240_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g190241_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (let ((__obj190096
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
           __obj190096
           'gx#syntax-pattern::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 'syntax-pattern '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 '(id depth) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 '(e id depth) '7 '#f '#f))
        (let ((__tmp190218 (cons |gx[1]#_g190219_| '())))
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 __tmp190218 '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 '#f '12 '#f '#f))
        (let ((__tmp190220 |gx[1]#_g190221_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 __tmp190220 '3 '#f '#f))
        (let ((__tmp190222 |gx[1]#_g190223_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 __tmp190222 '13 '#f '#f))
        (let ((__tmp190224 |gx[1]#_g190225_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 __tmp190224 '14 '#f '#f))
        (let ((__tmp190226
               (cons (cons 'id |gx[1]#_g190227_|)
                     (cons (cons 'depth |gx[1]#_g190228_|)
                           (cons (cons 'e |gx[1]#_g190229_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 __tmp190226 '15 '#f '#f))
        (let ((__tmp190230
               (cons (cons 'id |gx[1]#_g190231_|)
                     (cons (cons 'depth |gx[1]#_g190232_|)
                           (cons (cons 'e |gx[1]#_g190233_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 __tmp190230 '16 '#f '#f))
        (let ((__tmp190234
               (cons (cons 'id |gx[1]#_g190235_|)
                     (cons (cons 'depth |gx[1]#_g190236_|)
                           (cons (cons 'e |gx[1]#_g190237_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 __tmp190234 '17 '#f '#f))
        (let ((__tmp190238
               (cons (cons 'id |gx[1]#_g190239_|)
                     (cons (cons 'depth |gx[1]#_g190240_|)
                           (cons (cons 'e |gx[1]#_g190241_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 __tmp190238 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190096 '() '20 '#f '#f))
        __obj190096))
    (define |gx[:0:]#syntax-split-splice*|
      (lambda (_%$stx188551%_)
        (let* ((_%g188555188577%_
                (lambda (_%g188556188573%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188556188573%_))))
               (_%g188554188647%_
                (lambda (_%g188556188581%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188556188581%_))
                      (let ((_%e188560188584%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g188556188581%_))))
                        (let ((_%hd188561188588%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188560188584%_)))
                              (_%tl188562188591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188560188584%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl188562188591%_))
                              (let ((_%e188563188594%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl188562188591%_))))
                                (let ((_%hd188564188598%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188563188594%_)))
                                      (_%tl188565188601%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188563188594%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188565188601%_))
                                      (let ((_%e188566188604%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl188565188601%_))))
                                        (let ((_%hd188567188608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188566188604%_)))
                                              (_%tl188568188611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188566188604%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl188568188611%_))
                                              (let ((_%e188569188614%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl188568188611%_))))
                                                (let ((_%hd188570188618%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188569188614%_)))
                                                      (_%tl188571188621%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188569188614%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl188571188621%_))
                                                      ((lambda (_%g188557188624%_
                                                                _%g188558188626%_
                                                                _%g188559188627%_)
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
                                               (cons _%g188559188627%_ '()))
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
                                     (cons (cons (cons _%g188558188626%_
                                                       (cons _%g188558188626%_
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
                           (cons (cons _%g188557188624%_
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
                                       (cons _%g188558188626%_ '()))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0 '#f 'lp))
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'fx1-))
                                                         (cons _%g188558188626%_
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
                                       (cons (cons _%g188557188624%_
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
               _%hd188570188618%_
               _%hd188567188608%_
               _%hd188564188598%_)
              (_%g188555188577%_ _%g188556188581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g188555188577%_
                                               _%g188556188581%_))))
                                      (_%g188555188577%_ _%g188556188581%_))))
                              (_%g188555188577%_ _%g188556188581%_))))
                      (_%g188555188577%_ _%g188556188581%_)))))
          (_%g188554188647%_ _%$stx188551%_))))))
